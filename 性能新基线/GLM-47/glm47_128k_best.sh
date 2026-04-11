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
# 内存碎片
export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True
export STREAMS_PER_DEVICE=32
# 网卡
export HCCL_SOCKET_IFNAME=enp23s0f3
export GLOO_SOCKET_IFNAME=enp23s0f3
# 通信buffer
export HCCL_BUFFSIZE=300
# model path
MODEL_PATH=/root/.cache/modelscope/hub/models/sxj731533730/GLM-4.7-W8A8-MTP
#MODEL_PATH=/mnt/share/weights/GLM_4.7_BF16

export ENABLE_ASCEND_MOE_NZ=1
export SGLANG_USE_FIA_NZ=1

export HCCL_OP_EXPANSION_MODE=AIV

export SGLANG_ENABLE_SPEC_V2=1
export SGLANG_ENABLE_OVERLAP_PLAN_STREAM=1
#export SGLANG_ENABLE_TORCH_COMPILE=1
#export SGLANG_SCHEDULER_DECREASE_PREFILL_IDLE=1

export TASK_QUEUE_ENABLE=1
export SGLANG_NPU_PROFILING=0

export DEEPEP_NORMAL_LONG_SEQ_PER_ROUND_TOKENS=256
export DEEPEP_NORMAL_LONG_SEQ_ROUND=16
export DEEP_NORMAL_MODE_USE_INT8_QUANT=1
export HCCL_BUFFSIZE=550
#export NPU_ENABLE_C8=1
#export SGLANG_NPU_PROFILING_BS=6
#export SGLANG_SCHEDULER_DECREASE_PREFILL_IDLE=1
#export SCHEDULER_STABLE_BATCH_SIZE=6
#export SCHEDULER_ENABLE_STABLE=1
#export ASDOPS_LOG_TO_STDOUT=1
#export ATB_LOG_TO_STDOUT=1
export SGLANG_NPU_PROFILING_STAGE="prefill"
export SGLANG_NPU_PROFILING_BS=1

# no pad
export SGLANG_ENABLE_NO_PADDING=1
export SGLANG_NO_PAD_BS=20

python3 -m sglang.launch_server --model-path ${MODEL_PATH} \
        --tp-size 16 \
        --quantization modelslim --trust-remote-code --attention-backend ascend --device npu \
        --watchdog-timeout 9000 --host 172.22.3.71 --port 8000 --mem-fraction-static 0.88 \
        --dtype bfloat16 \
        --chunked-prefill-size 8192 \
        --max-prefill-tokens 520000 \
        --cuda-graph-bs 8 \
        --max-running-requests 16 \
        --speculative-algorithm NEXTN \
        --speculative-num-steps 3 \
        --speculative-eagle-topk 1 \
        --speculative-num-draft-tokens 4 \
        --skip-server-warmup \
        --moe-a2a-backend deepep --deepep-mode auto \
        --dp-size 2 --enable-dp-attention --load-balance-method round_robin --enable-dp-lm-head \
        --speculative-draft-model-quantization unquant
