export ASCEND_USE_FIA=1
export SGLANG_SET_CPU_AFFINITY=1
export ASCEND_MF_STORE_URL="tcp://172.22.3.71:12345"
export HCCL_SOCKET_IFNAME=enp23s0f3
export GLOO_SOCKET_IFNAME=enp23s0f3

export SGLANG_DEEPEP_BF16_DISPATCH=0
export HCCL_BUFFSIZE=4000
export DEEPEP_NORMAL_LONG_SEQ_PER_ROUND_TOKENS=4096
export DEEPEP_NORMAL_LONG_SEQ_ROUND=16

MODEL_PATH=/root/.cache/modelscope/hub/models/zcgy26/Qwen3-235B-A22B-Instruct-2507-w8a8

python3 -m sglang.launch_server \
   --model-path ${MODEL_PATH} \
   --disaggregation-mode decode \
   --disaggregation-transfer-backend ascend \
   --attention-backend ascend \
   --mem-fraction-static 0.8 \
   --disable-cuda-graph \
   --device npu \
   --disable-radix-cache \
   --quantization modelslim \
   --chunked-prefill-size 8192 \
   --skip-server-warmup \
   --tp-size 16 \
   --max-running-requests 1 \
   --host 172.22.3.166 \
   --port 8232 \
   --moe-a2a-backend deepep \
   --deepep-mode low_latency \
   --disable-overlap-schedule