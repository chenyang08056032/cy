echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sysctl -w vm.swappiness=0
sysctl -w kernel.numa_balancing=0
sysctl -w kernel.sched_migration_cost_ns=50000

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

export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True
export STREAMS_PER_DEVICE=32
export ASCEND_MF_STORE_URL="tcp://172.22.3.71:24670"

P_IP=('172.22.3.71' '172.22.3.154')
D_IP=('172.22.3.166' '172.22.3.181')
MODEL_PATH=/root/.cache/modelscope/hub/models/vllm-ascend/DeepSeek-V3.2-W8A8

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
        export HCCL_BUFFSIZE=1200
        export DEEP_NORMAL_MODE_USE_INT8_QUANT=1
        export TASK_QUEUE_ENABLE=2
        export HCCL_SOCKET_IFNAME=enp23s0f3
        export GLOO_SOCKET_IFNAME=enp23s0f3

        python3 -m sglang.launch_server --model-path ${MODEL_PATH} \
        --tp 32 \
		    --dp 2 \
		    --enable-dp-attention \
		    --enable-dp-lm-head \
        --trust-remote-code \
        --attention-backend ascend \
        --device npu \
        --watchdog-timeout 9000 \
        --host ${P_IP[$i]} --port 8000 \
        --mem-fraction-static 0.73 \
        --disable-radix-cache --chunked-prefill-size -1 --max-prefill-tokens 68000 \
        --max-running-requests 2 \
        --moe-a2a-backend deepep --deepep-mode normal \
        --quantization modelslim \
        --disaggregation-transfer-backend ascend \
        --disaggregation-mode prefill \
        --disable-cuda-graph \
        --nnodes 2 --node-rank $i \
        --disaggregation-bootstrap-port 8995 \
        --moe-dense-tp-size 1 \
	      --enable-nsa-prefill-context-parallel \
        --nsa-prefill-cp-mode in-seq-split \
        --attn-cp-size 16 \
        --dist-init-addr ${P_IP[0]}:21000
        break
    fi
done


# decode
for i in "${!D_IP[@]}";
do
    if [[ "$LOCAL_HOST1" == "${D_IP[$i]}" || "$LOCAL_HOST2" == "${D_IP[$i]}" ]];
    then
        echo "${D_IP[$i]}"

        export TASK_QUEUE_ENABLE=0
        export SGLANG_SCHEDULER_SKIP_ALL_GATHER=1

        export HCCL_SOCKET_IFNAME=enp23s0f3
        export GLOO_SOCKET_IFNAME=enp23s0f3

        DP=8
        export HCCL_BUFFSIZE=400
        export SGLANG_DEEPEP_NUM_MAX_DISPATCH_TOKENS_PER_RANK=8

        python3 -m sglang.launch_server --model-path ${MODEL_PATH} \
        --tp 32 \
        --dp ${DP} \
        --ep 32 \
        --moe-dense-tp-size 1 \
        --enable-dp-attention \
        --enable-dp-lm-head \
        --trust-remote-code \
        --attention-backend ascend \
        --device npu \
        --watchdog-timeout 9000 \
        --host ${D_IP[$i]} --port 8001 \
        --mem-fraction-static 0.79 \
        --disable-radix-cache \
        --chunked-prefill-size -1 --max-prefill-tokens 68000 \
        --max-running-requests 32 \
        --cuda-graph-max-bs 4 \
        --moe-a2a-backend deepep \
        --deepep-mode low_latency \
        --quantization modelslim \
        --disaggregation-transfer-backend ascend \
        --disaggregation-mode decode \
        --nnodes 2 --node-rank $i \
        --dist-init-addr ${D_IP[0]}:10000
        break
    fi
done