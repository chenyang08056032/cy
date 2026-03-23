export ASCEND_USE_FIA=1
export ASCEND_MF_STORE_URL="tcp://172.22.3.71:12345"

python3 -m sglang.launch_server \
    --model-path /root/.cache/modelscope/hub/models/Qwen/Qwen3-235B-A22B-Instruct-2507 \
    --disaggregation-mode decode \
    --disaggregation-transfer-backend ascend \
    --attention-backend ascend \
    --mem-fraction-static 0.8 \
    --disable-cuda-graph \
    --device npu \
    --disable-radix-cache \
    --chunked-prefill-size -1 \
    --skip-server-warmup \
    --base-gpu-id 8 \
    --tp-size 8 \
    --max-running-requests 32 \
    --host 172.22.3.160 \
    --port 8232