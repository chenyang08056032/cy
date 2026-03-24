export ASCEND_USE_FIA=1
export SGLANG_SET_CPU_AFFINITY=1
export ASCEND_MF_STORE_URL="tcp://172.22.3.71:12345"
export HCCL_SOCKET_IFNAME=enp23s0f3
export GLOO_SOCKET_IFNAME=enp23s0f3

# p节点IP
P_IP=('172.22.3.71' '172.22.3.166')
# D节点IP D节点首节点IP
D_IP=('172.22.3.160')

LOCAL_HOST1=`hostname -I|awk -F " " '{print$1}'`
LOCAL_HOST2=`hostname -I|awk -F " " '{print$2}'`
echo "${LOCAL_HOST1}"
echo "${LOCAL_HOST2}"

# prefill
for i in "${!P_IP[@]}";
do
    if [[ "$LOCAL_HOST1" == "${P_IP[$i]}" || "$LOCAL_HOST2" == "${P_IP[$i]}" ]];
    then
      python3 -m sglang.launch_server \
      --model-path /root/.cache/modelscope/hub/models/Qwen/Qwen3-235B-A22B-Instruct-2507 \
      --disaggregation-mode prefill \
      --disaggregation-transfer-backend ascend \
      --disaggregation-bootstrap-port 8995 \
      --attention-backend ascend \
      --disable-radix-cache \
      --chunked-prefill-size -1 \
      --skip-server-warmup \
      --device npu \
      --tp-size 32 \
      --attn-cp-size 2 \
      --mem-fraction-static 0.7 \
      --max-running-requests 1 \
      --host ${P_IP[$i]} \
      --port 8000 \
      --dist-init-addr 172.22.3.71:5000 \
      --nnodes 2 --node-rank $i
      NODE_RANK=$i
      break
    fi
done

for i in "${!D_IP[@]}";
do
    if [[ "$LOCAL_HOST1" == "${D_IP[$i]}" || "$LOCAL_HOST2" == "${D_IP[$i]}" ]];
    then
      echo "${D_IP[$i]}"
      python3 -m sglang.launch_server \
      --model-path /root/.cache/modelscope/hub/models/Qwen/Qwen3-235B-A22B-Instruct-2507 \
      --disaggregation-mode decode \
      --disaggregation-transfer-backend ascend \
      --attention-backend ascend \
      --mem-fraction-static 0.8 \
      --disable-cuda-graph \
      --device npu \
      --disable-radix-cache \
      --chunked-prefill-size -1 \
      --skip-server-warmup \
      --tp-size 16 \
      --max-running-requests 32 \
      --host ${D_IP[$i]} \
      --port 8232
      NODE_RANK=$i
      break
    fi
done
