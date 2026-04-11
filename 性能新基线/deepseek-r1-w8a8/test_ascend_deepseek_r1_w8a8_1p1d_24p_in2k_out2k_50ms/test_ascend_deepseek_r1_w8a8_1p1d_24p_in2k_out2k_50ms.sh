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
export ASCEND_MF_STORE_URL="tcp://172.22.3.71:24670"

# p节点IP
P_IP=('172.22.3.71')
# D节点IP D节点首节点IP
D_IP=('172.22.3.166' '172.22.3.181')

MODEL_PATH=/root/.cache/modelscope/hub/models/Howeee/DeepSeek-R1-0528-w8a8

# enable mlapo
export SGLANG_NPU_USE_MLAPO=1
export SGLANG_USE_FIA_NZ=1

LOCAL_HOST1=`hostname -I|awk -F " " '{print$1}'`
LOCAL_HOST2=`hostname -I|awk -F " " '{print$2}'`
echo "${LOCAL_HOST1}"
echo "${LOCAL_HOST2}"

# prefill
for i in "${!P_IP[@]}";
do
    if [[ "$LOCAL_HOST1" == "${P_IP[$i]}" || "$LOCAL_HOST2" == "${P_IP[$i]}" ]];
    then
    echo "${P_IP[$i]}"
    export HCCL_BUFFSIZE=1600
    export DEEP_NORMAL_MODE_USE_INT8_QUANT=1
    export TASK_QUEUE_ENABLE=2
    export HCCL_SOCKET_IFNAME=enp23s0f3
    export GLOO_SOCKET_IFNAME=enp23s0f3
    export SGLANG_USE_AG_AFTER_QLORA=1

        python -m sglang.launch_server --model-path ${MODEL_PATH}  --disaggregation-mode prefill --host ${P_IP[$i]} \
        --port 8000 --disaggregation-bootstrap-port $((8998+$i)) --trust-remote-code --nnodes 1 --node-rank 0 \
        --tp-size 16 --mem-fraction-static 0.8 --attention-backend ascend --device npu --quantization modelslim \
        --disaggregation-transfer-backend ascend --max-running-requests 20 --context-length 8192 --disable-radix-cache \
        --chunked-prefill-size -1 --max-prefill-tokens 28680 --moe-a2a-backend deepep --deepep-mode normal \
        --speculative-algorithm NEXTN --speculative-num-steps 1 --speculative-eagle-topk 1 --speculative-num-draft-tokens 2  \
        --dp-size 4 --enable-dp-attention --disable-shared-experts-fusion --dtype bfloat16  --enable-attn-tp-input-scattered
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
    export HCCL_BUFFSIZE=800
    export SGLANG_DEEPEP_NUM_MAX_DISPATCH_TOKENS_PER_RANK=102
    export TASK_QUEUE_ENABLE=1
    export SGLANG_SCHEDULER_SKIP_ALL_GATHER=1
    export HCCL_SOCKET_IFNAME=enp23s0f3
    export GLOO_SOCKET_IFNAME=enp23s0f3

	python -m sglang.launch_server --model-path ${MODEL_PATH} --disaggregation-mode decode --host ${D_IP[$i]} \
        --port 8001 --trust-remote-code --dist-init-addr ${D_IP[0]}:5000 --nnodes 2 --node-rank $i --tp-size 32 --dp-size 32 \
        --mem-fraction-static 0.81 --max-running-requests 1088 --attention-backend ascend --device npu --quantization modelslim \
        --moe-a2a-backend ascend_fuseep --enable-dp-attention --deepep-mode low_latency --enable-dp-lm-head --moe-dense-tp 1 \
        --cuda-graph-bs 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 --disaggregation-transfer-backend ascend --watchdog-timeout 9000 --context-length 8192 \
        --speculative-algorithm NEXTN --speculative-num-steps 2 --speculative-eagle-topk 1 --speculative-num-draft-tokens 3  \
        --tokenizer-worker-num 4 --prefill-round-robin-balance --disable-shared-experts-fusion --dtype bfloat16  --load-balance-method round_robin
        NODE_RANK=$i
        break
    fi
done

exit 1