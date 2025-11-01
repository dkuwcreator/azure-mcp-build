# azure-mcp-build

Automated build pipeline for distributing Azure MCP Server binaries.

## Overview

This repository contains a GitHub Actions workflow that automatically:
1. Fetches the latest version of `@azure/mcp` from npm
2. Extracts platform-specific standalone executables
3. Creates releases with binaries for Windows, Linux, and macOS

## Platform Support

- **Windows x64** (`win-x64`): Extracted from `@azure/mcp-win32-x64`
- **Linux x64** (`linux-x64`): Extracted from `@azure/mcp-linux-x64`
- **macOS x64** (`macos-x64`): Extracted from `@azure/mcp-darwin-x64`

## Build Process

The workflow uses **Node.js 24.x LTS** and extracts pre-built standalone executables from the official `@azure/mcp` platform-specific packages. These binaries are single-executable applications that don't require Node.js to be installed on the target system.

### Previous Approach
Previously used `pkg` with Node 20 to package the wrapper script.

### Current Approach
- Uses Node.js 24.x LTS (latest Long Term Support version)
- Extracts native standalone executables from platform-specific npm packages
- Binaries are already optimized single-executable applications

## Releases

Releases are automatically created when a new version of `@azure/mcp` is published to npm. Each release includes:
- `azure-mcp-win-x64.zip` - Windows x64 binary
- `azure-mcp-linux-x64.zip` - Linux x64 binary
- `azure-mcp-macos-x64.zip` - macOS x64 binary