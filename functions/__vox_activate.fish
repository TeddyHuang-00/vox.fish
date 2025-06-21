function __vox_activate --description "Activate a virtual environment"
    if test (count $argv) -eq 0
        echo "Usage: __vox_activate <name>"
        return 1
    end

    set env_name $argv[1]
    set env_path "$VOX_VENV_DIR/$env_name"

    if not test -d "$env_path"
        echo "Environment '$env_name' does not exist"
        return 1
    end

    # Deactivate current environment if active
    if test -n "$VIRTUAL_ENV"
        deactivate
    end

    # Activate the new environment
    source "$env_path/bin/activate.fish"
    echo "Activated: $env_name"
end
