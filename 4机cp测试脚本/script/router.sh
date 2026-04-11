python -m sglang_router.launch_router \
    --pd-disaggregation \
    --policy cache_aware \
    --prefill http://172.22.3.71:8000 8995 \
    --decode http://172.22.3.166:8001 \
    --host 127.0.0.1 \
    --port 6688 \
    --mini-lb