function vox --description "Virtual Environment Manager"
    if test (count $argv) -eq 0
        echo "Virtual Environment Manager"
        echo "Commands:"
        echo "  new <name> [python-version]  - Create new environment"
        echo "  remove <name>                - Remove environment"
        echo "  activate <name>              - Activate environment"
        echo "  deactivate                   - Deactivate current environment"
        return 0
    end

    set cmd $argv[1]
    set -e argv[1]

    switch $cmd
        case new
            vox-new $argv
        case remove
            vox-remove $argv
        case activate
            vox-activate $argv
        case deactivate
            vox-deactivate $argv
        case '*'
            echo "Unknown command: $cmd"
            echo "Available commands: new, remove, activate, deactivate"
            return 1
    end
end
