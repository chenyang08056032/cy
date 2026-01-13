export PYTHONPATH=/workspace/sglang_test:$PYTHONPATH
# 后台执行所有 Ascend 测试，日志保存到 /data/ascend_all_logs
mkdir -p /data/ascend_all_logs
LOG_FILE="/data/ascend_all_logs/console_$(date +%Y%m%d_%H%M%S).log"
nohup python run_suite.py \
  --suite all \
  --continue-on-error \
  --enable-retry \
  --log-dir /data/ascend_all_logs \
  > ${LOG_FILE} 2>&1 &
