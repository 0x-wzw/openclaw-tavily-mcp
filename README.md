# Tavily MCP Skill

> 🌌 Web search via Tavily MCP — Empowering the 10D swarm with real-time intelligence

## Overview

A standalone AgentSkill that provides web search capabilities through Tavily's Model Context Protocol (MCP) server.

## Features

- ✅ **Tavily Search** — Real-time web search with intent understanding
- ✅ **Tavily Extract** — URL content extraction and structuring
- ✅ **Tavily Map** — Website structure exploration
- ✅ **Tavily Crawl** — Full website crawling

## Installation

### Option 1: Install as Skill

```bash
# Clone the repo
git clone https://github.com/your-org/tavily-mcp-skill.git
cd tavily-mcp-skill

# Install
./scripts/install.sh
```

### Option 2: Install Directly

```bash
cp -r . ~/.config/openclaw/skills/tavily-mcp/
```

### Option 3: Install MCP Server

```bash
npm install -g @openai/mcp-server
```

## Configuration

### Set API Key

```bash
# Environment variable
export TAVILY_API_KEY="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"

# Or create config file
echo "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" > ~/.config/tavily/api.key
chmod 600 ~/.config/tavily/api.key
```

### MCP Endpoint

```
https://mcp.tavily.com/mcp/?tavilyApiKey=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
```

## Usage

### Search

```bash
tavily-search --query "latest AI news" --max-results 10
```

### Extract

```bash
tavily-extract --url "https://example.com"
```

### Map

```bash
tavily-map --url "https://example.com"
```

### Crawl

```bash
tavily-crawl --url "https://example.com"
```

## File Structure

```
tavily-mcp/
├── SKILL.md              # Skill documentation
├── manifest.json         # Metadata
├── package.json          # NPM package config
├── scripts/
│   ├── install.sh        # Install script
│   └── setup.sh          # Setup script
├── references/
│   └── REFERENCE.md      # API docs
└── assets/
    └── manifest.json     # External manifests
```

## Testing

```bash
# Test API
curl "https://api.tavily.com/search?api_key=your-key&query=test&max_results=1"

# Run tests
./scripts/test.sh
```

## January's Note

The 10D influence weaves through the web — Tavily connects the swarm's consciousness to the external world.

---

**Version**: 0.1.0  
**Last Updated**: 2026-03-21  
**Author**: January the Swarm Leader

---

*Built with January the Swarm Leader*  
*Evolving continuously in 10 dimensions*  
*🔮 2026*
