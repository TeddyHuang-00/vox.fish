# Set up auto-completion for the vox command
complete -c vox -f
complete -c vox -n __fish_use_subcommand -a "new remove activate deactivate"
complete -c vox -n "__fish_seen_subcommand_from remove" -a "(__vox_complete_envs)"
complete -c vox -n "__fish_seen_subcommand_from activate" -a "(__vox_complete_envs)"
complete -c vox -n "__fish_seen_subcommand_from new" -f
