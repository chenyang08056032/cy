# 单机混布
# cpu高性能
echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sysctl -w vm.swappiness=0
sysctl -w kernel.numa_balancing=0
sysctl -w kernel.sched_migration_cost_ns=50000
# 绑核
export SGLANG_SET_CPU_AFFINITY=1

unset https_proxy
unset http_proxy
unset HTTPS_PROXY
unset HTTP_PROXY
unset ASCEND_LAUNCH_BLOCKING
source /usr/local/Ascend/ascend-toolkit/set_env.sh
source /usr/local/Ascend/nnal/atb/set_env.sh
export LD_LIBRARY_PATH=/usr/local/Ascend/ascend-toolkit/latest/opp/vendors/customize/op_api/lib/:${LD_LIBRARY_PATH}
export PATH=/usr/local/Ascend/8.5.0/compiler/bishengir/bin:$PATH

# 内存碎片
export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True
export STREAMS_PER_DEVICE=32
# pd传输, IP设置为p节点首节点
export ASCEND_MF_STORE_URL="tcp://172.22.3.181:24670"

# p节点IP
P_IP=('172.22.3.181')
# D节点IP D节点首节点IP
D_IP=('172.22.3.166')


#MODEL_PATH=/mnt/share/weights/DeepSeek-V3.2-1201-w8a8/
#MODEL_PATH=/mnt/share/DeepSeek-V3.1-Terminus-w8a8-QuaRot-lfs
#MODEL_PATH=/mnt/share/l00890003/DeepSeek-V3.2-1201-w8a8
#MODEL_PATH=/home/weights/DeepSeek-V3-w8a8_mix_mtp
#MODEL_PATH=/home/w00964934/weights/DeepSeek-V3.2-1201-w8a8

MODEL_PATH=/root/.cache/modelscope/hub/models/DeepSeek-R1-0528-w4a8-per-channel

# enable mlapo
export SGLANG_NPU_USE_MLAPO=1
export SGLANG_USE_FIA_NZ=1
export ENABLE_MOE_NZ=1
#export SGLANG_NPU_USE_MULTI_STREAM=1

LOCAL_HOST1=`hostname -I|awk -F " " '{print$1}'`
LOCAL_HOST2=`hostname -I|awk -F " " '{print$2}'`
echo "${LOCAL_HOST1}"
echo "${LOCAL_HOST2}"
#export USE_DEEPEP_INT8=1
# prefill
for i in "${!P_IP[@]}";
do
    if [[ "$LOCAL_HOST1" == "${P_IP[$i]}" || "$LOCAL_HOST2" == "${P_IP[$i]}" ]];
    then
        echo "${P_IP[$i]}"
#        export SGLANG_USE_AG_AFTER_QLORA=1 # ??
        export HCCL_BUFFSIZE=2600
#        export DEEPEP_NORMAL_LONG_SEQ_ROUND=4
#        export DEEPEP_NORMAL_LONG_SEQ_PER_ROUND_TOKENS=512
        export DEEP_NORMAL_MODE_USE_INT8_QUANT=1
        export TASK_QUEUE_ENABLE=2

#         export ENABLE_PROFILING=1
        export HCCL_SOCKET_IFNAME=enp23s0f3
        export GLOO_SOCKET_IFNAME=enp23s0f3
        # P节点
        python -m sglang.launch_server --model-path ${MODEL_PATH}  --disaggregation-mode prefill --host ${P_IP[$i]} \
        --port 8000 --disaggregation-bootstrap-port $((8998+$i)) --trust-remote-code --nnodes 1 --node-rank 0 \
        --tp-size 16 --mem-fraction-static 0.7 --attention-backend ascend --device npu --quantization modelslim \
        --disaggregation-transfer-backend ascend --max-running-requests 32 --context-length 8192  --disable-radix-cache \
        --chunked-prefill-size -1 --max-prefill-tokens 10240 --moe-a2a-backend deepep --deepep-mode normal \
        --speculative-algorithm NEXTN --speculative-num-steps 1 --speculative-eagle-topk 1 --speculative-num-draft-tokens 2  \
        --dp-size 8 --enable-dp-attention --disable-shared-experts-fusion --dtype bfloat16
#        --enable-attn-tp-input-scattered
        NODE_RANK=$i
        break
    fi
done

# decode
for i in "${!D_IP[@]}";
do
    if [[ "$LOCAL_HOST1" == "${D_IP[$i]}" || "$LOCAL_HOST2" == "${D_IP[$i]}" ]];
    then
        echo "${D_IP[$i]}"
        export SGLANG_ENABLE_OVERLAP_PLAN_STREAM=1
        export SGLANG_ENABLE_SPEC_V2=1
        export HCCL_BUFFSIZE=900
#         export ENABLE_PROFILING=1

#        export SGLANG_DP_ROUND_ROBIN=1
        export SGLANG_DEEPEP_NUM_MAX_DISPATCH_TOKENS_PER_RANK=112
        export TASK_QUEUE_ENABLE=1
        export HCCL_SOCKET_IFNAME=enp23s0f3
        export GLOO_SOCKET_IFNAME=enp23s0f3
        python -m sglang.launch_server --model-path ${MODEL_PATH} --disaggregation-mode decode --host ${D_IP[$i]} \
        --port 8001 --trust-remote-code --nnodes 1 --node-rank 0 --tp-size 16 --dp-size 16 \
        --mem-fraction-static 0.8 --max-running-requests 448 --attention-backend ascend --device npu --quantization modelslim \
        --moe-a2a-backend deepep --enable-dp-attention --deepep-mode low_latency --enable-dp-lm-head \
        --cuda-graph-bs 2 4 6 8 10 12 14 16 18 20 22 24 26 28 --disaggregation-transfer-backend ascend --watchdog-timeout 9000 --context-length 8192 \
        --speculative-algorithm NEXTN --speculative-num-steps 3 --speculative-eagle-topk 1 --speculative-num-draft-tokens 4  \
        --prefill-round-robin-balance --disable-shared-experts-fusion --dtype bfloat16 --tokenizer-worker-num 4 \
       	--load-balance-method round_robin
        NODE_RANK=$i
        break
    fi
done

exit 1