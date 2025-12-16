i# Only run in interactive shells
if status is-interactive
    if functions -q nvm
        # Quietly use default Node version if it exists
        nvm use default >/dev/null 2>/dev/null
    end
end

