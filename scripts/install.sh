#!/bin/bash
# Install Tavily MCP skill for OpenClaw, Claude Code, or similar AI agents

set -e

echo "📦 Installing Tavily MCP skill..."
echo ""

# Detect platform and install location
if command -v openclaw &> /dev/null; then
    INSTALL_DIR="$HOME/.config/openclaw/skills"
    AGENT="OpenClaw"
elif command -v claude &> /dev/null; then
    if [ -d "$HOME/.claude/skills" ]; then
        INSTALL_DIR="$HOME/.claude/skills"
        AGENT="Claude Code"
    else
        INSTALL_DIR="$HOME/.config/claude/skills"
        AGENT="Claude Desktop"
    fi
elif [ -d "$HOME/.vscode/extensions" ]; then
    INSTALL_DIR="$HOME/.vscode/extensions"
    AGENT="VS Code"
else
    INSTALL_DIR="$HOME/.local/share/ai-skills"
    AGENT="Local"
fi

echo "📋 Detected agent: $AGENT"
echo "📋 Installing to: $INSTALL_DIR"

# Check if API key is already configured
if [ -f "$HOME/.config/tavily/api.key" ]; then
    echo "✅ Tavily API key already configured at ~/.config/tavily/api.key"
else
    echo "⚠️  Tavily API key not found. Please set it:"
    echo "   export TAVILY_API_KEY='your-api-key'"
    echo "   or create the config file directly"
    echo ""
fi

# Create install directory
mkdir -p "$INSTALL_DIR"

# Copy skill files
if [ -f "SKILL.md" ]; then
    cp SKILL.md "$INSTALL_DIR/"
    echo "✅ Installed SKILL.md"
else
    echo "❌ SKILL.md not found in current directory"
    exit 1
fi

if [ -d "scripts" ]; then
    cp -r scripts/* "$INSTALL_DIR/"
    echo "✅ Installed scripts"
fi

if [ -d "references" ]; then
    cp -r references/* "$INSTALL_DIR/"
    echo "✅ Installed references"
fi

if [ -d "assets" ]; then
    cp -r assets/* "$INSTALL_DIR/"
    echo "✅ Installed assets"
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "Next steps:"
echo "  1. Configure your Tavily API key (if not already set)"
echo "  2. Restart your agent application"
echo ""
echo "To remove:"
echo "  rm -rf $INSTALL_DIR/tavily-mcp"
