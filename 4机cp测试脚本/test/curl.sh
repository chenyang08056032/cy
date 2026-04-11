curl --location http://127.0.0.1:6688/v1/chat/completions --header 'Content-Type: application/json' --data '{ "model": "/root/.cache/modelscope/hub/models/vllm-ascend/DeepSeek-V3.2-W8A8","max_tokens": 1000,"messages": [{ "role": "user",
 "content": [
    {"type": "text", "text": "The capital of France is"}
  ]}], "temperature": 0, "chat_template_kwargs":{"enable_thinking":false}
  }'