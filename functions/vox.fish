function vox --description "Virtual Environment Manager"
    set -l options h/help
    argparse $options -- $argv
    or return 1

    if set -q _flag_help
        __vox_help
        return 0
    end

    if test (count $argv) -eq 0
        __vox_help
        return 1
    end

    set cmd $argv[1]
    set -e argv[1]

    switch $cmd
        case new
            __vox_new $argv
        case remove
            __vox_remove $argv
        case activate
            __vox_activate $argv
        case deactivate
            __vox_deactivate $argv
        case '*'
            echo "cuvis: unknown command '$cmd'" >&2
            echo "Try 'vox --help' for more information." >&2
            return 1
    end
end
