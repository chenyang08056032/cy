#!/bin/bash

LOG_DIR="./log"
mkdir -p "$LOG_DIR"

for script in "test_ascend_dbrx_instruct.py" "test_npu_llama4_scount_17b_16e.py" "test_npu_grok_2.py"; do
    log_file="$LOG_DIR/$(basename "$script" .py).log"
    echo "开始执行: $script" | tee -a "$log_file"
    timeout 2h python "$script" 2>&1 | tee -a "$log_file"
    echo "执行结束: $script" | tee -a "$log_file"
done