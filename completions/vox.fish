# Disable file completion
complete -c vox -f

# Complete subcommands
complete -c vox -n __fish_use_subcommand -a new -d "Create a new virtual environment"
complete -c vox -n __fish_use_subcommand -a remove -d "Remove an existing virtual environment"
complete -c vox -n __fish_use_subcommand -a activate -d "Activate a virtual environment"
complete -c vox -n __fish_use_subcommand -a deactivate -d "Deactivate the current virtual environment"

# Complete help option
complete -c vox -l help -s h -d "Show help"

# Complete environment name for 'remove' and 'activate' commands
complete -c vox -n "__fish_seen_subcommand_from remove" -a "(__vox_complete_envs)"
complete -c vox -n "__fish_seen_subcommand_from activate" -a "(__vox_complete_envs)"
