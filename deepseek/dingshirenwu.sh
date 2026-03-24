#!/bin/bash
for script in run_testcase_dsr1_w4a8_1p1d_16p_3k5_1k5_50ms.sh \
              run_testcase_dsr1_w8a8_1p1d_24p_2k_2k_50ms.sh \
              run_testcase_dsr1_w8a8_2p1d_32p_3k5_1k5_20ms.sh
do
    echo "开始执行: $script"
    timeout 3h ./"$script" || echo "超时或失败: $script"
    echo "完成: $script"
done