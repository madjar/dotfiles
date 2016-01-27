# Load system stuff (autojump and all)
[ -d /etc/profile.d/ ], and source /etc/profile.d/*.fish

# SSH stuff on linux
if [ $XDG_CURRENT_DESKTOP = "GNOME" ]
	set -x SSH_ASKPASS /usr/lib/seahorse/seahorse-ssh-askpass
	eval (envoy -pf)
end

# Autojump on the mac
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish


# Nice emacs shortcuts
function e
	emacsclient $argv --alternate-editor '' --create-frame --no-wait
end

function ek
	emacsclient --alternate-editor '' --eval '(kill-emacs)'
end

function et
	env TERM=xterm-256color emacsclient $argv --alternate-editor ''
end
