# Azure MCP Server - Ready-to-Use Binaries 🚀

Get the Azure MCP Server up and running in seconds! **No npm, no Node.js, no hassle.**

This repository automatically builds and publishes ready-to-use Azure MCP Server binaries for Windows, Linux, and macOS. Just download, unzip, and run!

## 📥 Download

Head to the [**Releases page**](https://github.com/dkuwcreator/azure-mcp-build/releases/latest) and download the binary for your platform:

- **Windows** → `azure-mcp-win-x64.zip`
- **Linux** → `azure-mcp-linux-x64.zip`
- **macOS** → `azure-mcp-macos-x64.zip`

Unzip the file and you're ready to go!

## 🚀 Quick Start

### 1. Download and Extract

Download the binary for your platform from the [Releases page](https://github.com/dkuwcreator/azure-mcp-build/releases/latest) and unzip it.

### 2. Authenticate with Azure

Before using the MCP server, sign in to Azure using the Azure CLI:

```bash
# Install Azure CLI if you haven't already
# Visit: https://learn.microsoft.com/cli/azure/install-azure-cli

# Sign in to Azure
az login
```

### 3. Run the Server

**Windows (PowerShell):**
```powershell
.\azure-mcp-win-x64.exe
```

**Linux/macOS:**
```bash
chmod +x azure-mcp-linux-x64  # or azure-mcp-macos-x64
./azure-mcp-linux-x64  # or ./azure-mcp-macos-x64
```

### 4. Connect from Your MCP Client

Configure your MCP client (like Claude Desktop) to connect to the server:

**Example configuration for Claude Desktop (`claude_desktop_config.json`):**

```json
{
  "mcpServers": {
    "azure": {
      "command": "/path/to/azure-mcp-linux-x64"
    }
  }
}
```

Replace `/path/to/azure-mcp-linux-x64` with the full path to your downloaded binary.

**For VS Code with GitHub Copilot:**
Install the Azure MCP Server extension and it will automatically use the binary.

### 5. Start Using Azure Resources

Once connected, you can interact with your Azure resources through natural language:
- "List all my storage accounts"
- "Show resource groups"
- "Query my Cosmos DB"
- "Run Azure CLI commands"

## ✨ Why Use This?

- ✅ **Zero dependencies** - No Node.js or npm installation required
- ✅ **Always up-to-date** - Automatically built from the latest `@azure/mcp` releases
- ✅ **Cross-platform** - Native binaries for Windows, Linux, and macOS
- ✅ **Simple** - Just download, unzip, and run

## 🔄 How It Works

GitHub Actions automatically:
1. Monitors for new `@azure/mcp` releases on npm
2. Extracts platform-specific standalone executables
3. Publishes them as GitHub releases (weekly checks + manual triggers)

Perfect for anyone who wants to use the Azure MCP Server without setting up a development environment!