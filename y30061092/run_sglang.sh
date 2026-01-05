echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sysctl -w vm.swappiness=0
sysctl -w kernel.numa_balancing=0
sysctl -w kernel.sched_migration_cost_ns=500000000
export SGLANG_SET_CPU_AFFINITY=1
#export PATHOMPATH=/home/qdl/code/sglang_npu/ptyhon:$PATHONPATH
export GLOO_SOCKET_IFNAME=enp23s0f3
export HCCL_SOCKET_IFNAME=enp23s0f3
export HCCL_BUFFSIZE=1000
source /usr/local/Ascend/ascend-toolkit/set_env.sh
export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True
export TASK_QUEUE_ENABLE=2
export ENABLE_PROFILING=0
export ASCEND_MF_STORE_URL="tcp://192.168.0.102:24666"
export SGLANG_DEEPEP_NUM_MAX_DISPATCH_TOKENS_PER_RANK=48

USE_VLLM_CUSTOM_ALLREDUCE=1 python -m sglang.launch_server --model-path /data/ascend-ci-share-pkking-sglang/modelscope/hub/models/DeepSeek-R1-0528-w4a8 --disaggregation-mode prefill --host 192.168.0.102 --port 8000 --disaggregation-bootstrap-port 8998 --trust-remote-code --nnodes 1 --node-rank 0 --tp-size 16 --mem-fracti
on-static 0.8 --attention-backend ascend --device npu --quantization w8a8_int8 --disaggregation-transfer-backend ascend --max-running-requests 8 --context-length 8192 --disable-radix-cache --chunked-prefill-size 32768 --max-prefill-tokens 28680 --moe-a2a-backend deepep --deepep-mode normal --speculative-algorithm NEXTN --speculative-num-steps 1 --speculative-eagle-topk 1 --speculative-num-draft-tokens 2 --dp-size 1 --enable-ap-attention --disable-shared-exports-fusion --dtype bfloat16
