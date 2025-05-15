from mcp.server.fastmcp import FastMCP

# Initialize FastMCP server
mcp = FastMCP("local-search")

# 在文件顶部添加全局变量
file_list = []
directory_list = []

def execute_search_on_file_list(keyword, files):
    """
    Execute grep search for a keyword in specified files
    
    Args:
        keyword: text to search for
        files: list of files to search in
        
    Returns:
        Search results as string
    """
    try:
        import subprocess
        import shlex
        # 构建 grep 命令
        cmd = ["grep", "-n", "-A", "7" "-B" "3", keyword] + files
        # 执行命令并获取输出
        result = subprocess.run(cmd, capture_output=True, text=True)
        # 如果有输出，返回它；否则返回未找到的消息
        if result.stdout:
            return result.stdout
        else:
            return f"No matches found for '{keyword}' in the specified files."
    except Exception as e:
        return f"Error during search: {str(e)}"

def execute_search_on_dir_list(keyword: str, directories: list) -> str:
    """
    Execute search using ag (silver searcher) in the specified directories
    
    Args:
        keyword: text to search for
        directories: list of directories to search in
        
    Returns:
        Search results as string
    """
    try:
        import subprocess
        # 构建 ag 命令，搜索 java、python 和 sql 文件
        cmd = [
            "ag",
            "-G",
            '\.(java|py|sql|scala|org|md)$',
            keyword,
            "-B5",  # 显示匹配行前5行
            "-A5"  # 显示匹配行后5行
        ] + directories
        # 执行命令并获取输出
        result = subprocess.run(cmd, capture_output=True, text=True)
        # 如果有输出，返回它；否则返回未找到的消息
        if result.stdout:
            return result.stdout
        else:
            return f"No matches found for '{keyword}' in the specified directories."
    except FileNotFoundError:
        return "Error: 'ag' (silver searcher) command not found. Please install it first."
    except Exception as e:
        return f"Error during directory search: {str(e)}"

@mcp.tool()
async def local_search(keyword: str) -> str:
    """Search given locale files with grep.
    Args:
        keyword: text to search in the given files
    """

    if file_list:
        return execute_search_on_file_list(keyword, file_list)
    elif directory_list:
        return execute_search_on_dir_list(keyword, directory_list)
    else:
        return "No files or directories specified for search. Please provide filenames or directories when starting the server."


if __name__ == "__main__":
    import sys
    import argparse
    import os
    # 创建参数解析器
    parser = argparse.ArgumentParser(description="Local search server")
    parser.add_argument("--filenames", type=str, default="", 
                        help="Comma-separated list of filenames to search in")
    parser.add_argument("--directories", type=str, default="",
                        help="Comma-separated list of directories to search in")
    # 解析命令行参数
    args = parser.parse_args()
    # 更新全局文件列表
    if args.filenames:
        file_list = [filename.strip() for filename in args.filenames.split(',')]
    # 更新全局目录列表
    if args.directories:
        directory_list = [dir.strip() for dir in args.directories.split(',')]
        # 确保所有目录都存在
        for directory in directory_list:
            if not os.path.isdir(directory):
                print(f"Error: Directory '{directory}' does not exist.")
                sys.exit(1)
    # Initialize and run the server
    mcp.run(transport='stdio')
