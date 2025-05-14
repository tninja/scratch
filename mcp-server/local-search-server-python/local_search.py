from typing import Any
import httpx
from mcp.server.fastmcp import FastMCP

# Initialize FastMCP server
mcp = FastMCP("local-search")

@mcp.tool()
async def local_search(keyword: str) -> str:
    """Search given locale files with grep.

    Args:
        keyword: text to search in the files
    """
    return ""


if __name__ == "__main__":
    # Initialize and run the server
    mcp.run(transport='stdio')
