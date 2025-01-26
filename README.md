# Personal Neovim Configuration

My personal Neovim setup with modern IDE features, including LSP support, autocompletion, file navigation, and more.

## Features

- 🎨 Color themes: Material and Nightfox
- 🔍 Fuzzy finding with Telescope
- 🌳 File explorer with NvimTree
- ✨ Syntax highlighting with Treesitter
- 📝 LSP support with:
    - Code completion
    - Diagnostics
    - Auto-formatting
- ⚡ Fast navigation with Harpoon
- 🔄 Git integration with Fugitive
- ⌨️ Improved commenting with Comment.nvim
- 🎯 LaTeX support with VimTeX
- 💻 Discord presence integration
- 🤖 AI-powered code suggestions with GitHub Copilot

## Prerequisites

- Neovim >= 0.7.0
- Node.js for Copilot
- Git
- A C compiler for Treesitter
- A Nerd Font for icons

## Structure

```
.
├── init.lua              # Entry point
├── lua/
│   └── alabarca/        # Configuration modules
│       ├── remap.lua    # Key mappings
│       └── set.lua      # Vim settings
│   └── plugins/        # Plugin management
│       ├── *.lua       # Configuration for each plugin 
│       └── init.lua      # Plugin manager setup
└── after/plugin/        # More plugin-specific configs
│   └── *.lua         # Plugin-specific configurations


```

## Language Support

- Python (via Pyright)
- LaTeX (via VimTeX)
- Lua
- And more via LSP

## Plugin Configuration

### LSP
LSP configuration uses lsp-zero and provides:
- Autocompletion
- Code diagnostics
- Go to definition
- Code formatting

### Telescope
Features include:
- File finding
- Live grep
- Git file browsing
- Buffer switching

### NvimTree
File explorer with:
- Git integration
- File icons
- Easy navigation
- File operations

### GitHub Copilot
AI code completion offering:
- Inline suggestions
- Multi-line completion
- Language-aware context

