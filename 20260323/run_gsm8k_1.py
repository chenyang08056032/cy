from types import SimpleNamespace
from sglang.test.few_shot_gsm8k import run_eval as run_gsm8k

host="127.0.0.1"
port=6689

args = SimpleNamespace(
    num_shots=5,
    data_path=None,
    num_questions=200,
    max_new_tokens=512,
    parallel=128,
    host=f"http://{host}",
    port=int(port),
)
metrics = run_gsm8k(args)