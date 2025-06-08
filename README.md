# vox.fish

A Fish shell plugin for managing Python virtual environments with [uv](https://github.com/astral-sh/uv), inspired by xonsh's [xontrib-vox](https://github.com/xonsh/xontrib-vox).

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install TeddyHuang-00/vox.fish
```

## Usage

```fish
# Create a new virtual environment
vox new myproject

# Create a new virtual environment with a specific Python version
vox new webapp python3.11

# Remove a virtual environment (with tab completion)
vox remove myproject

# Activate an environment (with tab completion)
vox activate myproject

# Deactivate current environment
vox deactivate
```

## Requirements

- [uv](https://github.com/astral-sh/uv) - Ultra-fast Python package installer and resolver
- Fish shell 3.0+

## Configuration

By default, virtual environments are stored in `~/.local/share/uv/venvs`.
You can customize this by setting the `VOX_VENV_DIR` variable in your config:

```fish
set -g VOX_VENV_DIR "/path/to/your/venvs"
```
