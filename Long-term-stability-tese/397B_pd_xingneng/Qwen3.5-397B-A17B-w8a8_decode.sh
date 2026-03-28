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

export SGLANG_DISAGGREGATION_WAITING_TIMEOUT=3600
export STREAMS_PER_DEVICE=32
export SGLANG_DEEPEP_NUM_MAX_DISPATCH_TOKENS_PER_RANK=32
export HCCL_BUFFSIZE=2000
export SGLANG_ENABLE_SPEC_V2=1
export SGLANG_ENABLE_OVERLAP_PLAN_STREAM=1
export HCCL_OP_EXPANSION_MODE=AIV
export HCCL_SOCKET_IFNAME=lo
export GLOO_SOCKET_IFNAME=lo
export SGLANG_NPU_PROFILING=0
export SGLANG_NPU_PROFILING_STAGE="prefill"
export DEEPEP_NORMAL_LONG_SEQ_ROUND=32
export DEEPEP_NORMAL_LONG_SEQ_PER_ROUND_TOKENS=3584
export ASCEND_MF_STORE_URL="tcp://172.22.3.181:24669"
export SGLANG_DISAGGREGATION_BOOTSTRAP_TIMEOUT=3600
export SGLANG_DISAGGREGATION_WAITING_TIMEOUT=3600
python3 -m sglang.launch_server \
  --model-path /root/.cache/modelscope/hub/models/Eco-Tech/Qwen3.5-397B-A17B-w8a8-mtp \
  --attention-backend ascend \
  --device npu \
  --tp-size 16 \
  --nnodes 1 \
  --node-rank 0 \
  --chunked-prefill-size -1 \
  --max-prefill-tokens 131072 \
  --disable-radix-cache \
  --trust-remote-code \
  --host 172.22.3.209 \
  --max-running-requests 16 \
  --moe-a2a-backend deepep \
  --deepep-mode low_latency \
  --mem-fraction-static 0.855555 \
  --port 8001 \
  --cuda-graph-bs 16 \
  --quantization modelslim \
  --enable-multimodal \
  --mm-attention-backend ascend_attn \
  --max-total-tokens 300000 \
  --dtype bfloat16 \
  --mamba-ssm-dtype bfloat16 \
  --disaggregation-mode decode \
  --disaggregation-transfer-backend ascend \
  --skip-server-warmup \
  --speculative-algorithm NEXTN \
  --speculative-num-steps 3 \
  --speculative-eagle-topk 1 \
  --speculative-num-draft-tokens 4 \
  --speculative-draft-model-quantization unquant