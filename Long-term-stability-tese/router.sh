python3 -m sglang_router.launch_router \
    --pd-disaggregation \
    --policy cache_aware \
    --prefill http://172.22.3.181:8000 8995 \
    --decode http://172.22.3.166:8000 \
    --host 172.22.3.181 \
    --port 6689 \
    --prometheus-port 29010
