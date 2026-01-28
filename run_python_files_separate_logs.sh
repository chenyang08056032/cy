#!/bin/bash

# 设置要执行的Python文件目录
DIRECTORY="./scripts"  # 替换为你的目录路径

# 检查目录是否存在
if [ ! -d "$DIRECTORY" ]; then
    echo "错误：目录 $DIRECTORY 不存在"
    exit 1
fi

# 创建总日志文件记录执行过程
MASTER_LOG="execution_summary.log"
echo "==========================================" > "$MASTER_LOG"
echo "开始执行时间: $(date)" >> "$MASTER_LOG"
echo "执行的目录: $DIRECTORY" >> "$MASTER_LOG"
echo "==========================================" >> "$MASTER_LOG"

# 按文件名排序并执行所有.py文件
for file in $(find "$DIRECTORY" -name "*.py" | sort); do
    # 获取文件名（不含路径和扩展名）
    filename=$(basename "$file" .py)
    # 生成对应的日志文件名
    log_file="${filename}.log"

    echo "正在执行: $file" | tee -a "$MASTER_LOG"
    echo "日志文件: $log_file" >> "$MASTER_LOG"
    echo "开始时间: $(date)" >> "$MASTER_LOG"

    # 创建单独的日志文件并执行Python文件
    echo "==========================================" > "$log_file"
    echo "执行文件: $file" >> "$log_file"
    echo "开始时间: $(date)" >> "$log_file"
    echo "==========================================" >> "$log_file"

    # 执行Python文件，输出到对应的日志文件
    python3 "$file" >> "$log_file" 2>&1

    # 获取执行状态
    EXIT_STATUS=$?

    # 记录结束时间到单独的日志文件
    echo "==========================================" >> "$log_file"
    echo "结束时间: $(date)" >> "$log_file"
    echo "执行状态: $EXIT_STATUS" >> "$log_file"
    echo "==========================================" >> "$log_file"

    # 记录到总日志文件
    echo "结束时间: $(date)" >> "$MASTER_LOG"

    if [ $EXIT_STATUS -ne 0 ]; then
        echo "错误：执行 $file 时出现问题 (退出码: $EXIT_STATUS)" | tee -a "$MASTER_LOG"
        echo "执行终止！" | tee -a "$MASTER_LOG"
        exit 1
    else
        echo "完成: $file (状态: 成功)" | tee -a "$MASTER_LOG"
        echo "日志文件: $log_file" >> "$MASTER_LOG"
    fi

    echo "------------------------" >> "$MASTER_LOG"
done

# 记录总体完成信息
echo "==========================================" >> "$MASTER_LOG"
echo "所有Python文件执行完毕！完成时间: $(date)" >> "$MASTER_LOG"
echo "==========================================" >> "$MASTER_LOG"

echo "所有Python文件执行完毕！"
echo "查看执行摘要: $MASTER_LOG"
echo "每个Python文件都有对应的日志文件"