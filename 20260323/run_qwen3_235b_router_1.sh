python3 -m sglang_router.launch_router \
    --pd-disaggregation \
    --policy cache_aware \
    --prefill http://127.0.0.1:8231 8995 \
    --decode http://127.0.0.1:8232 \
    --host 127.0.0.1 \
    --port 6689 \
    --prometheus-port 29010