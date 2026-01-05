export PYTHONPATH=/data/dzc/code/cp/sglang/python:$PYTHONPATH
unset ASCEND_LAUNCH_BLOCKING
source /usr/local/Ascend/ascend-toolkit/set_env.sh
source /usr/local/Ascend/nnal/atb/set_env.sh
source /usr/local/Ascend/ascend-toolkit/latest/opp/vendors/customize/bin/set_env.bash
export ASCEND_HOME_PATH=/usr/local/Ascend/ascend-toolkit/latest
export ASCEND_MF_STORE_URL="tcp://192.168.0.77:24667"
export HCCL_SOCKET_IFNAME="enp23s0f3"
export GLOO_SOCKET_IFNAME="enp23s0f3"

 python -m sglang_router.launch_router \
	--decode http://192.168.0.60:30000 \
	--prefill http://192.168.0.77:30000 \
	--pd-disaggregation \
	--mini-lb \
	--policy cache_aware \
	--host 192.168.0.77 \
	--port 6699 
