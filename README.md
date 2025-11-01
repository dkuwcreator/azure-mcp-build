# Azure MCP Server - Ready-to-Use Binaries 🚀

Get the Azure MCP Server up and running in seconds! **No npm, no Node.js, no hassle.**

This repository automatically builds and publishes ready-to-use Azure MCP Server binaries for Windows, Linux, and macOS. Just download, unzip, and run!

## 📥 Download

Head to the [**Releases page**](https://github.com/dkuwcreator/azure-mcp-build/releases/latest) and download the binary for your platform:

- **Windows** → `azure-mcp-win-x64.zip`
- **Linux** → `azure-mcp-linux-x64.zip`
- **macOS** → `azure-mcp-macos-x64.zip`

Unzip the file and you're ready to go!

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