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

1. **Install Crystal** (if not already installed):
   ```bash
   # Ubuntu/Debian
   curl -fsSL https://crystal-lang.org/install.sh | sudo bash
   
   # macOS
   brew install crystal
   
   # Arch Linux
   sudo pacman -S crystal
   ```

2. **Clone and build quests.cr**:
   ```bash
   git clone https://github.com/baltavay/quests.cr.git
   cd quests.cr
   shards install
   crystal build src/quests.cr --release
   ```

3. **Install to PATH**:
   ```bash
   sudo cp quests /usr/local/bin/
   # or
   cp quests ~/.local/bin/  # make sure ~/.local/bin is in your PATH
   ```

4. **Verify installation**:
   ```bash
   quests --version
   ```

## Installation

### LazyVim

Add to your LazyVim configuration:

```lua
{
  "baltavay/quests.nvim",
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
  "baltavay/quests.nvim",
  cmd = { "Quests", "QuestsDaily", "QuestsClose" },
}
```

#### packer.nvim
```lua
use {
  "baltavay/quests.nvim",
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