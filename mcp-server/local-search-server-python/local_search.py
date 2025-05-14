from mcp.server.fastmcp import FastMCP

# Initialize FastMCP server
mcp = FastMCP("local-search")

# 在文件顶部添加全局变量
file_list = []

@mcp.tool()
async def local_search(keyword: str) -> str:
    """Search given locale files with grep.
    Args:
        keyword: text to search in the given files
    """

    if not file_list:
        return "No files specified for search. Please provide filenames when starting the server."
    try:
        import subprocess
        import shlex
        # 构建 grep 命令
        cmd = ["grep", "-n", "-A", "7", keyword] + file_list
        # 执行命令并获取输出
        result = subprocess.run(cmd, capture_output=True, text=True)
        # 如果有输出，返回它；否则返回未找到的消息
        if result.stdout:
            return result.stdout
        else:
            return f"No matches found for '{keyword}' in the specified files."
    except Exception as e:
        return f"Error during search: {str(e)}"


if __name__ == "__main__":
    import sys
    import argparse
    # 创建参数解析器
    parser = argparse.ArgumentParser(description="Local search server")
    parser.add_argument("--filenames", type=str, default="", 
                        help="Comma-separated list of filenames to search in")
    # 解析命令行参数
    args = parser.parse_args()
    # 更新全局文件列表
    if args.filenames:
        file_list = [filename.strip() for filename in args.filenames.split(',')]
    # Initialize and run the server
    mcp.run(transport='stdio')
