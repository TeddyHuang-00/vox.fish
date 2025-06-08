function vox-deactivate --description "Deactivate current virtual environment"
    if test -n "$VIRTUAL_ENV"
        deactivate
        echo "Deactivated virtual environment"
    else
        echo "No virtual environment is currently active"
    end
end
