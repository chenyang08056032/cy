# 后台执行所有 Ascend 测试，日志保存到 /data/ascend_all_logs
mkdir -p /data/c30044170/log
TIME=$(date +%Y%m%d_%H%M%S)
nohup python run_suite.py \
  --suite per-commit-1-npu-a3 \
  --continue-on-error \
  --enable-retry \
  --timeout-pre-file 3600\
  --log-dir /data/c30044170/log \
 | split -b 10M -d -a 3 - /data/c30044170/log/console_${TIME}_part_2>&1 &
