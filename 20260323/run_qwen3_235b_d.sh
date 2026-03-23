export SGLANG_SET_CPU_AFFINITY=1
export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True
export STREAMS_PER_DEVICE=32
export HCCL_BUFFSIZE=1536
export SGLANG_DEEPEP_NUM_MAX_DISPATCH_TOKENS_PER_RANK=32
export SGLANG_DEEPEP_BF16_DISPATCH=1

python -m sglang.launch_server \
   --model-path /root/.cache/modelscope/hub/models/vllm-ascend/Qwen3-235B-A22B-W8A8 \
   --tp-size 16 \
   --trust-remote-code \
   --attention-backend ascend \
   --device npu \
   --watchdog-timeout 9000 \
   --mem-fraction-static 0.5 \
   --disaggregation-transfer-backend ascend \
   --disaggregation-mode decode \
   --port 30001