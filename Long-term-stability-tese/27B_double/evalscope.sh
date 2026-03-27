evalscope eval \
  --model /root/.cache/modelscope/hub/models/Qwen/Qwen3.5-27B \
  --api-url http://172.22.3.181:6689/v1 \
  --api-key EMPTY \
  --eval-type openai_api \
  --generation-config '{
        "do_sample": true,
        "max_tokens": 1024,
        "seed": 3407,
        "top_p":0.8,
        "top_k":20,
        "temperature": 0.7,
        "n":1,
        "presence_penalty": 1.5,
        "repetition_penalty": 1.0,
        "timeout": 3600,
        "stream": true,
        "extra_body":{"chat_template_kwargs":{"enable_thinking":false}}}' \
  --datasets gsm8k \
  --dataset-dir "/data/c30044170/dataset/gsm8k" \
  --eval-batch-size 16 \
  --ignore-errors --limit 200
