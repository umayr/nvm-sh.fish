function nvm --description "Fish wrapper for nvm-sh (requires bass)"
    # Respect existing NVM_DIR if set, otherwise default
    if not set -q NVM_DIR
        set -gx NVM_DIR "$HOME/.nvm"
    end

    set -l nvm_sh "$NVM_DIR/nvm.sh"

    if not test -f "$nvm_sh"
        echo "nvm-sh not found at: $nvm_sh"
        echo "Install nvm-sh and restart fish."
        return 1
    end

    if not type -q bass
        echo "bass not installed. Install via fisher: fisher install edc/bass"
        return 1
    end

    # Source nvm into a bash subshell, run nvm, import env back into fish
    bass source "$nvm_sh" --no-use ';' nvm $argv
end

