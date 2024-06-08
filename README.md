
# Neovim Configuration

This repository contains my personal configuration for Neovim. It includes various plugins, settings, and key mappings to enhance my productivity and customize my editing environment.

## Installation

To use this configuration, follow these steps:

1. Make sure you have Neovim installed on your system. You can download it from the [Neovim website](https://neovim.io/).

2. Clone this repository to your Neovim configuration directory:

```git clone https://github.com/DK10WS/Neovim ~/.config/nvim```

3. Open Neovim. The plugins will be automatically installed on the first launch using [folke/lazy.nvim](https://github.com/folke/lazy.nvim), a lazy loading plugin manager for Neovim.

4. Once the installation is complete, you can start using Neovim with the configured settings and plugins.

## Features

- **Lazy Loading**: Plugins are lazily loaded using [folke/lazy.nvim](https://github.com/folke/lazy.nvim), which helps improve startup time and reduce memory usage.

- **Plugin Manager**: Plugin management is handled by Lazy, a lazy loading plugin manager for Neovim.

- **Key Mappings**: Custom key mappings are defined to streamline common tasks and improve workflow efficiency. See below for a list of key mappings.

- **Syntax Highlighting**: Enhanced syntax highlighting for various file types to improve code readability.

- **Plugin List**: Below is a list of plugins included in this configuration:
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim): A Neovim plugin to provide buffer/tabline with icons.
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim): A Lua utility library for Neovim plugins.
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons): A Lua plugin for setting up icons in Neovim.
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp): A completion plugin for Neovim.
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer): A buffer source for nvim-cmp.
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim): Lazy loading for Neovim plugins.

## Key Mappings

Below are some of the key mappings defined in this configuration:

- `j` and `k`: Navigate between lines.
- `<Leader>h`: Open horizontal terminal.
- `<Leader>v`: Open vertical terminal.
- Other custom key mappings can be found in the `init.lua` and  `mapping.lua` file.

## Configuration

Additional configurations and plugin settings can be found in the `init.lua` file. Here are some of the configurations included:
- Lazy loading setup for plugins.
- Bufferline setup with custom options and highlights.
- Clipboard configuration for unnamed and unnamedplus registers.
- Number column enabled.
- Indentation settings.

## Usage

- **Key Mappings**: Refer to the `init.lua` file for custom key mappings and configurations.

- **Plugin Configuration**: Additional configurations and plugin settings can be found in the `init.lua` file.



