from ais_bench.benchmark.models import VLLMCustomAPIChatStream
from ais_bench.benchmark.utils.model_postprocessors import extract_non_reasoning_content

models = [
    dict(
        attr="service",
        type=VLLMCustomAPIChatStream,
        abbr='vllm-api-stream-chat',
        path="/root/.cache/modelscope/hub/models/Howeee/DeepSeek-R1-0528-w8a8",
        model="DeepSeek-R1",
        request_rate = 40,
        retry = 2,
        host_ip = "127.0.0.1",
        host_port = 6688,
        max_out_len = 1536,
        batch_size=1024,
        trust_remote_code=False,
        generation_kwargs = dict(
            ignore_eos = True
        ),
        pred_postprocessor=dict(type=extract_non_reasoning_content)
    )
]