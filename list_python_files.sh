#!/bin/bash

# 设置要搜索的目录列表
DIRECTORIES=(
    "./llm_models"
    "./data_processing"
    "./utils"
    # 添加更多目录...
)

echo "正在搜索以下目录中的Python文件："
for dir in "${DIRECTORIES[@]}"; do
    echo "  - $dir"
done
echo ""

# 初始化计数器
total_files=0

# 遍历所有目录，查找并打印Python文件
for dir in "${DIRECTORIES[@]}"; do
    echo "=========================================="
    echo "目录: $dir"
    echo "=========================================="
    
    # 检查目录是否存在
    if [ ! -d "$dir" ]; then
        echo "  警告：目录不存在，跳过"
        echo ""
        continue
    fi
    
    # 查找并打印Python文件
    files=$(find "$dir" -name "*.py" -type f | sort)
    
    if [ -z "$files" ]; then
        echo "  未找到Python文件"
    else
        counter=1
        while IFS= read -r file; do
            if [ -n "$file" ]; then
                echo "  $counter. $file"
                ((counter++))
                ((total_files++))
            fi
        done <<< "$files"
    fi
    echo ""
done

echo "=========================================="
echo "总计找到 $total_files 个Python文件"
echo "=========================================="
