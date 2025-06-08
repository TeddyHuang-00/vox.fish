# Set up auto-completion for the vox command
complete -c vox -f

# Main subcommands with descriptions
complete -c vox -n __fish_use_subcommand -a "new" -d "Create a new virtual environment"
complete -c vox -n __fish_use_subcommand -a "remove" -d "Remove an existing virtual environment"
complete -c vox -n __fish_use_subcommand -a "activate" -d "Activate a virtual environment"
complete -c vox -n __fish_use_subcommand -a "deactivate" -d "Deactivate the current virtual environment"

# Environment name completions for remove and activate commands
complete -c vox -n "__fish_seen_subcommand_from remove" -a "(__vox_complete_envs)" -d "Virtual environment"
complete -c vox -n "__fish_seen_subcommand_from activate" -a "(__vox_complete_envs)" -d "Virtual environment"

# New command should not complete files
complete -c vox -n "__fish_seen_subcommand_from new" -f
