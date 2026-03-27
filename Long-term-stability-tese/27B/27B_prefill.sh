# high performance cpu
echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sysctl -w vm.swappiness=0
sysctl -w kernel.numa_balancing=0
sysctl -w kernel.sched_migration_cost_ns=50000
# bind cpu
export SGLANG_SET_CPU_AFFINITY=1

unset https_proxy
unset http_proxy
unset HTTPS_PROXY
unset HTTP_PROXY
export ASCEND_LAUNCH_BLOCKING=1
# cann
source /usr/local/Ascend/ascend-toolkit/set_env.sh
source /usr/local/Ascend/nnal/atb/set_env.sh

export STREAMS_PER_DEVICE=32
export SGLANG_DEEPEP_NUM_MAX_DISPATCH_TOKENS_PER_RANK=32
export HCCL_BUFFSIZE=3000
export HCCL_OP_EXPANSION_MODE=AIV
export HCCL_SOCKET_IFNAME=lo
export GLOO_SOCKET_IFNAME=lo
export SGLANG_NPU_PROFILING=0
export SGLANG_NPU_PROFILING_STAGE="prefill"
export DEEPEP_NORMAL_LONG_SEQ_ROUND=32
export DEEPEP_NORMAL_LONG_SEQ_PER_ROUND_TOKENS=3584
export ASCEND_MF_STORE_URL="tcp://127.0.0.1:24669"
export SGLANG_DISAGGREGATION_WAITING_TIMEOUT=3600
python3 -m sglang.launch_server \
        --model-path /root/.cache/modelscope/hub/models/Qwen/Qwen3.5-27B \
        --attention-backend ascend \
        --device npu \
        --tp-size 2 --nnodes 1 --node-rank 0 \
        --chunked-prefill-size -1 --max-prefill-tokens 28672 \
        --disable-radix-cache \
        --trust-remote-code \
        --host 127.0.0.1 --max-running-requests 128 \
        --mem-fraction-static 0.75 \
        --port 8999 \
        --cuda-graph-bs 2 4 6 8 10 16 20 24 28 32 48 64 \
        --enable-multimodal \
        --mm-attention-backend ascend_attn --max-total-tokens 120000 \
        --dtype bfloat16 --mamba-ssm-dtype bfloat16 --base-gpu-id 10 --disaggregation-mode prefill --disaggregation-transfer-backend ascend