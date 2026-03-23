export ASCEND_USE_FIA=1
export SGLANG_SET_CPU_AFFINITY=1
export ASCEND_MF_STORE_URL="tcp://172.22.3.71:12345"

python3 -m sglang.launch_server \
    --model-path /root/.cache/modelscope/hub/models/vllm-ascend/Qwen3-235B-A22B-W8A8 \
    --disaggregation-mode prefill \
    --disaggregation-transfer-backend ascend \
    --disaggregation-bootstrap-port 8995 \
    --attention-backend ascend \
    --disable-radix-cache \
    --chunked-prefill-size -1 \
    --skip-server-warmup \
    --device npu \
    --base-gpu-id 0 \
    --tp-size 8 \
    --attn-cp-size 2 \
    --max-running-requests 1 \
    --host 127.0.0.1 \
    --port 8000