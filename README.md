# quests.nvim

A Neovim plugin that integrates with [quests.cr](https://github.com/baltavay/quests.cr) to provide a beautiful terminal-based quest management system directly within your editor.

## Features

- 🎯 Open quests.cr in a floating window within Neovim
- 📅 Support for daily quests mode
- ⌨️ Convenient keybindings and commands
- 🎨 Clean, centered floating window with rounded borders
- 🔄 Automatic window management

## Prerequisites

You need to have [quests.cr](https://github.com/baltavay/quests.cr) installed and available in your PATH.

## Installation

### LazyVim

Add to your LazyVim configuration:

```lua
{
  "your-username/quests.nvim",
  cmd = { "Quests", "QuestsDaily", "QuestsClose" },
  keys = {
    { "<leader>q", "<cmd>Quests<cr>", desc = "Open Quests" },
    { "<leader>qd", "<cmd>QuestsDaily<cr>", desc = "Open Daily Quests" },
    { "<leader>qc", "<cmd>QuestsClose<cr>", desc = "Close Quests" },
  },
}
```

### Other Plugin Managers

#### lazy.nvim
```lua
{
  "your-username/quests.nvim",
  cmd = { "Quests", "QuestsDaily", "QuestsClose" },
}
```

#### packer.nvim
```lua
use {
  "your-username/quests.nvim",
  cmd = { "Quests", "QuestsDaily", "QuestsClose" }
}
```

## Usage

### Commands

- `:Quests` - Open the quests application
- `:QuestsDaily` - Open quests in daily mode
- `:QuestsClose` - Close the quests window

### Default Keybindings

- `<leader>q` - Open quests
- `<leader>qd` - Open daily quests
- `<leader>qc` - Close quests

### Window Controls

Once the quests window is open:
- `q` or `Esc` - Close the window
- All standard quests.cr keybindings work within the terminal

## Configuration

The plugin works out of the box with sensible defaults. The floating window is automatically sized to 80% of your screen dimensions and centered.

## License

MIT