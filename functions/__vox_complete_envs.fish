function __vox_complete_envs --description "List available virtual environments for completion"
    if not test -d "$VOX_VENV_DIR"
        return 1
    end
    for env in (ls "$VOX_VENV_DIR" 2>/dev/null)
        set config_file "$VOX_VENV_DIR/$env/pyvenv.cfg"
        if not test -f "$config_file"
            echo "$env"
            continue
        end
        # Extract Python version from pyvenv.cfg
        set python_version (grep "version_info = " "$config_file" | cut -d' ' -f3 | head -1)
        if test -n "$python_version"
            printf "%s\tPython %s\n" "$env" "$python_version"
        else
            echo "$env"
        end
    end
end
