import os
import sys
import shutil


def remove_lines_in_file(file_path, start_line, end_line, backup=True):
    """
    删除文件中指定行范围的内容

    参数:
    file_path: 文件路径
    start_line: 起始行号（包含，从1开始计数）
    end_line: 结束行号（包含，从1开始计数）
    backup: 是否创建备份文件
    """

    # 验证参数
    if not os.path.exists(file_path):
        print(f"错误：文件 '{file_path}' 不存在")
        return False

    if start_line < 1:
        print("错误：起始行号必须大于等于1")
        return False

    if end_line < start_line:
        print("错误：结束行号不能小于起始行号")
        return False

    # 创建备份文件
    backup_path = None
    if backup:
        backup_path = f"{file_path}.bak"
        try:
            shutil.copy2(file_path, backup_path)
            print(f"已创建备份文件: {backup_path}")
        except Exception as e:
            print(f"创建备份文件失败: {e}")
            return False

    try:
        # 读取文件所有行
        with open(file_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        total_lines = len(lines)
        print(f"文件总行数: {total_lines}")

        # 检查行号是否有效
        if start_line > total_lines:
            print(f"错误：起始行号 {start_line} 超出文件总行数 {total_lines}")
            return False

        if end_line > total_lines:
            end_line = total_lines
            print(f"警告：结束行号调整为文件总行数 {end_line}")

        # 计算删除的行数
        delete_count = end_line - start_line + 1
        if delete_count <= 0:
            print("没有需要删除的行")
            return True

        print(f"即将删除第 {start_line} 行到第 {end_line} 行，共 {delete_count} 行")
        print("删除前5行示例：")
        for i in range(start_line - 1, min(start_line + 4, end_line)):
            if i < total_lines:
                line_content = lines[i].rstrip('\n')
                print(f"  {i + 1}: {line_content[:100]}{'...' if len(line_content) > 100 else ''}")

        # 确认操作
        confirm = input(f"确认删除这 {delete_count} 行吗？(y/N): ").strip().lower()
        if confirm != 'y':
            print("操作已取消")
            return False

        # 删除指定行（注意：Python列表索引从0开始）
        del lines[start_line - 1:end_line]

        # 写入新文件
        with open(file_path, 'w', encoding='utf-8') as f:
            f.writelines(lines)

        print(f"成功删除 {delete_count} 行")
        print(f"删除后文件行数: {len(lines)}")

        return True

    except Exception as e:
        print(f"处理文件时发生错误: {e}")

        # 如果备份文件存在，恢复文件
        if backup and backup_path and os.path.exists(backup_path):
            try:
                shutil.copy2(backup_path, file_path)
                print(f"已从备份恢复文件")
            except:
                pass
        return False


def main():
    """主函数，提供命令行接口"""

    # 默认参数
    file_path = input("请输入要处理的文件路径: ").strip().strip('"').strip("'")

    if not file_path:
        print("错误：请输入文件路径")
        sys.exit(1)

    try:
        start_line = int(input("请输入起始行号 (默认10000): ").strip() or "10000")
        end_line = int(input("请输入结束行号 (默认100000): ").strip() or "100000")
    except ValueError:
        print("错误：行号必须是整数")
        sys.exit(1)

    # 执行删除操作
    remove_lines_in_file(file_path, start_line, end_line)


# 如果是直接运行脚本
if __name__ == "__main__":
    main()