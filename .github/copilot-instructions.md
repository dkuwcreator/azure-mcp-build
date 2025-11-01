# GitHub Copilot Instructions

This document provides guidance for GitHub Copilot when working with this repository.

## Project Overview

This is the azure-mcp-build repository. When working on code in this repository, follow the guidelines and best practices outlined below.

## General Guidelines

### Code Quality
- Write clean, maintainable, and well-documented code
- Follow language-specific best practices and conventions
- Use meaningful variable and function names
- Keep functions small and focused on a single responsibility

### Documentation
- Add clear comments for complex logic
- Update README.md when adding new features or making significant changes
- Document all public APIs and interfaces
- Include usage examples where appropriate

### Testing
- Write tests for new functionality when a test framework is available
- Ensure existing tests pass before proposing changes
- Follow existing testing patterns in the repository

### Version Control
- Write clear, descriptive commit messages
- Keep commits focused and atomic
- Follow conventional commit format when applicable

### Security
- Never commit secrets, API keys, or sensitive credentials
- Follow security best practices for the specific technology stack
- Validate and sanitize all inputs
- Use secure dependencies and keep them updated

### Azure and Cloud Best Practices
- Follow Azure naming conventions for resources
- Use managed identities where possible
- Implement proper error handling and retry logic
- Consider cost optimization in design decisions
- Use Infrastructure as Code (IaC) for resource provisioning

### Performance
- Consider performance implications of code changes
- Optimize for readability first, then performance if needed
- Profile before optimizing
- Document any performance-critical sections

## Collaboration

- Be respectful and constructive in code reviews
- Ask questions when requirements are unclear
- Suggest improvements while respecting existing patterns
- Help maintain consistency across the codebase
