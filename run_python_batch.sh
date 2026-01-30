#!/bin/bash

# 设置要执行的Python文件目录列表
DIRECTORIES=(
    #"./llm_models" 
    "./embedding_models"
    "./rerank_models" 
    "./reward_models" 
    "./vlm_models" 
    # 添加更多目录... 
    )    

# 检查目录是否存在
for dir in "${DIRECTORIES[@]}"; do
    if [ ! -d "$dir" ]; then
        echo "错误：目录 $dir 不存在"
        exit 1
    fi
done

# 检查log目录是否存在，不存在则创建
mkdir -p ./log

# 创建总日志文件记录执行过程（覆盖写入）
MASTER_LOG="./log/execution_summary.log"
echo "==========================================" > "$MASTER_LOG"
echo "开始执行时间: $(date)" >> "$MASTER_LOG"
echo "执行的目录: ${DIRECTORIES[*]}" >> "$MASTER_LOG"
echo "==========================================" >> "$MASTER_LOG"

# 获取所有Python文件并显示
PYTHON_FILES=()
for dir in "${DIRECTORIES[@]}"; do
    while IFS= read -r -d '' file; do
        PYTHON_FILES+=("$file")
    done < <(find "$dir" -name "*.py" -type f -print0 | sort -z)
done

echo "找到以下Python文件：" >> "$MASTER_LOG"
echo "==========================================" >> "$MASTER_LOG"
counter=1
for file in "${PYTHON_FILES[@]}"; do
    echo "$counter. $file" >> "$MASTER_LOG"
    ((counter++))
done
echo "==========================================" >> "$MASTER_LOG"
echo "总共找到 ${#PYTHON_FILES[@]} 个Python文件" >> "$MASTER_LOG"
echo "" >> "$MASTER_LOG"

# 初始化统计变量和文件列表
total_files=0
success_files=0
failed_files=0
success_list=()
failed_list=()

# 按文件名排序并执行所有.py文件
for file in "${PYTHON_FILES[@]}"; do
    # 获取源目录名（用于创建日志子目录）
    source_dir=""
    for dir in "${DIRECTORIES[@]}"; do
        if [[ "$file" == "$dir"* ]]; then
            # 提取目录名（去除路径前缀）
            source_dir=$(basename "$dir")
            break
        fi
    done
    
    # 如果无法匹配到源目录，使用"unknown"作为目录名
    if [ -z "$source_dir" ]; then
        source_dir="unknown"
    fi
    
    # 创建对应的日志子目录
    log_subdir="./log/$source_dir"
    mkdir -p "$log_subdir"
    
    # 获取文件名（不含路径和扩展名）
    filename=$(basename "$file" .py)
    
    # 生成对应的日志文件路径
    log_file="$log_subdir/${filename}.log"

    echo "正在执行: $file" >> "$MASTER_LOG"
    echo "日志文件: $log_file" >> "$MASTER_LOG"
    echo "开始时间: $(date)" >> "$MASTER_LOG"

    # 创建单独的日志文件并执行Python文件（覆盖写入）
    echo "==========================================" > "$log_file"
    echo "执行文件: $file" >> "$log_file"
    echo "开始时间: $(date)" >> "$log_file"
    echo "==========================================" >> "$log_file"

    # 执行Python文件，输出到对应的日志文件（覆盖写入）
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

    # 更新统计
    ((total_files++))

    if [ $EXIT_STATUS -ne 0 ]; then
        echo "警告：执行 $file 时出现问题 (退出码: $EXIT_STATUS)" >> "$MASTER_LOG"
        echo "继续执行下一个文件..." >> "$MASTER_LOG"
        ((failed_files++))
        failed_list+=("$file")
    else
        echo "完成: $file (状态: 成功)" >> "$MASTER_LOG"
        echo "日志文件: $log_file" >> "$MASTER_LOG"
        ((success_files++))
        success_list+=("$file")
    fi

    echo "------------------------" >> "$MASTER_LOG"
done

# 记录总体完成信息和统计到MASTER_LOG
echo "==========================================" >> "$MASTER_LOG"
echo "所有Python文件执行完毕！完成时间: $(date)" >> "$MASTER_LOG"
echo "==========================================" >> "$MASTER_LOG"
echo "执行统计：" >> "$MASTER_LOG"
echo "总文件数: $total_files" >> "$MASTER_LOG"
echo "成功: $success_files" >> "$MASTER_LOG"
echo "失败: $failed_files" >> "$MASTER_LOG"
echo "" >> "$MASTER_LOG"

# 记录成功文件列表到MASTER_LOG
if [ ${#success_list[@]} -gt 0 ]; then
    echo "执行成功的文件：" >> "$MASTER_LOG"
    for i in "${!success_list[@]}"; do
        echo "$((i+1)). ${success_list[i]}" >> "$MASTER_LOG"
    done
else
    echo "没有文件执行成功" >> "$MASTER_LOG"
fi
echo "" >> "$MASTER_LOG"

# 记录失败文件列表到MASTER_LOG
if [ ${#failed_list[@]} -gt 0 ]; then
    echo "执行失败的文件：" >> "$MASTER_LOG"
    for i in "${!failed_list[@]}"; do
        echo "$((i+1)). ${failed_list[i]}" >> "$MASTER_LOG"
    done
else
    echo "没有文件执行失败" >> "$MASTER_LOG"
fi
echo "==========================================" >> "$MASTER_LOG"

# 只在终端显示简要总结信息
echo "所有Python文件执行完毕！"
echo "查看执行摘要: $MASTER_LOG"
echo "日志文件按目录分类存放在 ./log/ 下"
echo ""
echo "执行统计："
echo "总文件数: $total_files"
echo "成功: $success_files"
echo "失败: $failed_files"

# 如果有失败的文件，以非零状态退出
if [ $failed_files -gt 0 ]; then
    echo "警告：有 $failed_files 个文件执行失败"
    echo "详细信息请查看日志文件: $MASTER_LOG"
    exit 1
else
    echo "所有文件执行成功！"
    exit 0
fi
