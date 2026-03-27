from types import SimpleNamespace
from sglang.test.few_shot_gsm8k import run_eval as run_gsm8k

host="172.22.3.181"
port=6689

args = SimpleNamespace(
    num_shots=5,
    data_path=None,
    num_questions=200,
    max_new_tokens=512,
    parallel=16,
    host=f"http://{host}",
    port=int(port),
)
metrics = run_gsm8k(args)
