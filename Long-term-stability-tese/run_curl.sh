url --location http://172.22.3.181:6689/v1/chat/completions --header 'Content-Type: application/json' --data '{ "model": "/root/.cache/modelscope/hub/models/Eco-Tech/Qwen3.5-397B-A17B-w8a8-mtp","max_tokens": 1000,"messages": [{ "role": "user",
 "content": [
    {"type": "text", "text": "The capital of France is"}
  ]}], "temperature": 0, "chat_template_kwargs":{"enable_thinking":false}
  }'