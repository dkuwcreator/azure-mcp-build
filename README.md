# Azure MCP Server - Ready-to-Use Binaries 🚀

Get the Azure MCP Server up and running in seconds! **No npm, no Node.js, no hassle.**

This repository automatically builds and publishes ready-to-use Azure MCP Server binaries for Windows, Linux, and macOS. Just download, unzip, and run!

## 📥 Download

Head to the [**Releases page**](https://github.com/dkuwcreator/azure-mcp-build/releases/latest) and download the binary for your platform:

- **Windows** → `azure-mcp-win-x64-v{version}.zip` (e.g., `azure-mcp-win-x64-v1.0.0.zip`)
- **Linux** → `azure-mcp-linux-x64-v{version}.zip` (e.g., `azure-mcp-linux-x64-v1.0.0.zip`)
- **macOS** → `azure-mcp-macos-x64-v{version}.zip` (e.g., `azure-mcp-macos-x64-v1.0.0.zip`)

Unzip the file and you're ready to go!

## 🚀 Quick Start

After downloading and unzipping:

**Windows:**
```powershell
.\azure-mcp-win-x64-v{version}.exe --help
```

**Linux:**
```bash
chmod +x azure-mcp-linux-x64-v{version}
./azure-mcp-linux-x64-v{version} --help
```

**macOS:**
```bash
chmod +x azure-mcp-macos-x64-v{version}
./azure-mcp-macos-x64-v{version} --help
```

### 3. Connect from Your MCP Client

Configure your MCP client (like Claude Desktop) to connect to the server:

**Example configuration for Claude Desktop (`claude_desktop_config.json`):**

```json
{
  "mcpServers": {
    "azure": {
      "command": "/absolute/path/to/azure-mcp-linux-x64-v{version}",
      "args": []
    }
  }
}
```

Replace `/absolute/path/to/azure-mcp-linux-x64-v{version}` with the full absolute path to your downloaded binary:
- **Windows:** `C:\\path\\to\\azure-mcp-win-x64-v{version}.exe`
- **Linux:** `/home/username/azure-mcp-linux-x64-v{version}`
- **macOS:** `/Users/username/azure-mcp-macos-x64-v{version}`

**For VS Code with GitHub Copilot:**
1. Install the [GitHub Copilot Chat extension](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)
2. Create `.vscode/mcp.json` in your workspace:
   ```json
   {
     "servers": {
       "azure": {
         "type": "stdio",
         "command": "/absolute/path/to/azure-mcp-linux-x64-v{version}",
         "args": []
       }
     }
   }
   ```
3. Open Command Palette (`Ctrl/Cmd + Shift + P`) and run **"MCP: Restart Servers"** to load the configuration

### 4. Start Using Azure Resources

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

### Force Rebuild

If you need to rebuild packages for an existing release version:
1. Go to the [Actions tab](https://github.com/dkuwcreator/azure-mcp-build/actions/workflows/build.yml)
2. Click "Run workflow"
3. Check the "Force rebuild even if release tag already exists" option
4. Click "Run workflow" to start the build

This is useful for:
- Re-building after a failed or incomplete release
- Testing workflow changes
- Updating binaries with the same version

### Build a Specific Version

You can build any version of the Azure MCP Server that exists on npm:
1. Go to the [Actions tab](https://github.com/dkuwcreator/azure-mcp-build/actions/workflows/build.yml)
2. Click "Run workflow"
3. In the "Version" field, enter the version you want to build (e.g., `1.0.0`, `0.9.5`)
4. Leave the field empty or enter `latest` to build the most recent version
5. Click "Run workflow" to start the build

You can find available versions on the [@azure/mcp npm page](https://www.npmjs.com/package/@azure/mcp?activeTab=versions).

Perfect for anyone who wants to use the Azure MCP Server without setting up a development environment!