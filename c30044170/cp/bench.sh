python3 -m sglang.bench_serving \
	--backend sglang \
	--dataset-name random \
	--num-prompts 1 \
	--random-input 64000 \
	--random-output 1 \
	--host 192.168.0.77 \
	--port 6699 \
	--random-range-ratio 1 \
	--model /data/ascend-ci-share-pkking-sglang/modelscope/hub/models/DeepSeek-V3.2-Exp-W8A8 
