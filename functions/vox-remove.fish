function vox-remove --description "Remove a virtual environment"
    if test (count $argv) -eq 0
        echo "Usage: vox-remove <name>"
        return 1
    end

    set env_name $argv[1]
    set env_path "$VOX_VENV_DIR/$env_name"

    if not test -d "$env_path"
        echo "Environment '$env_name' does not exist"
        return 1
    end

    # Check if the environment is currently active
    if test "$VIRTUAL_ENV" = "$env_path"
        echo "Cannot remove active environment '$env_name'. Please deactivate it first."
        return 1
    end

    # Prompt for confirmation
    read -l -P "Are you sure you want to remove '$env_name'? [y/N]" response

    # Remove the environment
    if test "$response" = y -o "$response" = Y
        rm -rf "$env_path"
        echo "Removed virtual environment: $env_name"
    else
        echo Cancelled
    end
end
