function __vox_complete_envs --description "List available virtual environments for completion"
    if test -d "$VOX_VENV_DIR"
        ls "$VOX_VENV_DIR" 2>/dev/null
    end
end
