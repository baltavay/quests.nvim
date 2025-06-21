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

### Installing quests.cr

**Quick Install (Recommended):**
```bash
git clone https://github.com/baltavay/quests.cr
cd quests.cr
make setup-ubuntu && make build && make install
```

For other platforms, replace `setup-ubuntu` with:
- `setup-fedora` (Fedora/RHEL)
- `setup-arch` (Arch Linux)  
- `setup-macos` (macOS)

**Verify installation:**
```bash
quests --version
```

## Installation

### LazyVim

Add to your LazyVim configuration:

```lua
{
  "baltavay/quests.nvim",
  cmd = { "Quests", "QuestsDaily" },
  keys = {
    { "<leader>tt", "<cmd>Quests<cr>", desc = "Open Quests" },
    { "<leader>td", "<cmd>QuestsDaily<cr>", desc = "Open Daily Quests" },
  },
}
```

### Other Plugin Managers

#### lazy.nvim
```lua
{
  "baltavay/quests.nvim",
  cmd = { "Quests", "QuestsDaily" },
}
```

#### packer.nvim
```lua
use {
  "baltavay/quests.nvim",
  cmd = { "Quests", "QuestsDaily" }
}
```

## Usage

### Commands

- `:Quests` - Open the quests application
- `:QuestsDaily` - Open quests in daily mode

### Default Keybindings

- `<leader>t` - Open quests
- `<leader>td` - Open daily quests

### Window Controls

Once the quests window is open:
- `q` or `Esc` - Close the window
- All standard quests.cr keybindings work within the terminal

## Configuration

The plugin works out of the box with sensible defaults. The floating window is automatically sized to 80% of your screen dimensions and centered.

## License

MIT
