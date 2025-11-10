# Use official Node.js LTS image as base
FROM node:24-slim

# Set the version as a build argument
ARG MCP_VERSION=latest

# Install the @azure/mcp package globally
RUN npm install -g "@azure/mcp@${MCP_VERSION}"

# Set the working directory
WORKDIR /app

# Set the entrypoint to the Azure MCP server
ENTRYPOINT ["azmcp"]

# Default command (can be overridden)
CMD []
