
#export HF_ENDPOINT=https://hf-mirror.com

export PYTHONPATH=/data/y30061092/lmms-eval:$PYTHONPATH

export PYTHONPATH=/data/y30061092/sglang/python:$PYTHONPATH

export PYTORCH_NPU_ALLOC_CONF=expandable_segments:True

export STREAMS_PER_DEVICE=32

export OPENAI_API_KEY="sk-123456"

hf download lmms-lab/MMMU --repo-type dataset

export ASCEND_RT_VISIBLE_DEVICES=8,9,10,11,12,13,14,15

