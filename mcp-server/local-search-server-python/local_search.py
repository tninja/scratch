from typing import Any
import httpx
from mcp.server.fastmcp import FastMCP

# Initialize FastMCP server
mcp = FastMCP("local-search")

# 在文件顶部添加全局变量
file_list = []

@mcp.tool()
async def local_search(keyword: str) -> str:
    """Search given locale files with grep.

    Args:
        keyword: text to search in the files
    """
    # 使用全局文件列表进行搜索
    # 这里可以添加搜索逻辑
    
    return ""


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
