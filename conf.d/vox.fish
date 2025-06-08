# Configuration for vox plugin
# Set default virtual environment directory
if not set -q VOX_VENV_DIR
    set -g VOX_VENV_DIR "$HOME/.local/share/vox/venvs"
end

# Ensure the directory exists
if not test -d "$VOX_VENV_DIR"
    mkdir -p "$VOX_VENV_DIR"
end
