function __vox_new --description "Create a new virtual environment with uv"
    if test (count $argv) -eq 0
        echo "Usage: __vox_new <name> [python-version]"
        return 1
    end

    set env_name $argv[1]
    set python_version $argv[2]

    if test -d "$VOX_VENV_DIR/$env_name"
        echo "Environment '$env_name' already exists"
        return 1
    end

    if test -n "$python_version"
        uv venv "$VOX_VENV_DIR/$env_name" --python $python_version
    else
        uv venv "$VOX_VENV_DIR/$env_name"
    end

    if test $status -eq 0
        echo "Created virtual environment: $env_name"
    end
end
