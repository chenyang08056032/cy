export PYTHONPATH=/data/y30061092/sglang/sglang/test/nightly/ascend/vlm_models/lmms-eval:$PYTHONPATH
pip install pyproject.toml
pip install accelerate
pip install loguru
pip install sacrebleu
pip install evaluate
pip install sqlitedict
pip install tenacity
export OPENAI_API_KEY="sk-123456"
pip install pytablewriter
pip install dotenv

