if status is-login
    and status is-interactive
    keychain --eval --quiet --agents ssh | source
end

begin
    set -l HOSTNAME (hostname)
    if test -f ~/.keychain/$HOSTNAME-fish
        source ~/.keychain/$HOSTNAME-fish
    end
end
