export ASCEND_USE_FIA=1
export SGLANG_SET_CPU_AFFINITY=1
export ASCEND_MF_STORE_URL="tcp://172.22.3.181:12345"
export HCCL_SOCKET_IFNAME=enp23s0f3
export GLOO_SOCKET_IFNAME=enp23s0f3

export ASCEND_LAUNCH_BLOCKING=1
export DEEP_NORMAL_MODE_USE_INT8_QUANT=1
export HCCL_BUFFSIZE=1500
export DEEPEP_NORMAL_LONG_SEQ_PER_ROUND_TOKENS=1024
export DEEPEP_NORMAL_LONG_SEQ_ROUND=128
export DEEPEP_NORMAL_COMBINE_ENABLE_LONG_SEQ=1

MODEL_PATH=/root/.cache/modelscope/hub/models/zcgy26/Qwen3-235B-A22B-Instruct-2507-w8a8

python3 -m sglang.launch_server \
   --model-path ${MODEL_PATH} \
   --disaggregation-mode prefill \
   --disaggregation-transfer-backend ascend \
   --disaggregation-bootstrap-port 8995 \
   --attention-backend ascend \
   --disable-radix-cache \
   --quantization modelslim \
   --chunked-prefill-size -1 \
   --skip-server-warmup \
   --device npu \
   --tp-size 16 \
   --mem-fraction-static 0.45 \
   --max-running-requests 1 \
   --host 172.22.3.181 \
   --port 8000 \
   --dist-init-addr 172.22.3.181:5000 \
   --nnodes 1 \
   --node-rank 0 \
   --moe-a2a-backend deepep \
   --deepep-mode normal