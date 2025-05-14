from typing import Any
import httpx
from mcp.server.fastmcp import FastMCP

# Initialize FastMCP server
mcp = FastMCP("local-search")

# 在文件顶部添加全局变量
file_list = []

@mcp.tool()
async def local_search(keyword: str, filenames: str = "") -> str:
    """Search given locale files with grep.

    Args:
        keyword: text to search in the files
        filenames: comma-separated list of filenames to search in
    """
    global file_list
    # 如果提供了新的文件名列表，则更新全局变量
    if filenames:
        file_list = [filename.strip() for filename in filenames.split(',')]
    
    return ""


if __name__ == "__main__":
    # Initialize and run the server
    mcp.run(transport='stdio')
