# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

PS1='\[\e[1;37m\][\u@\h \W]\$\[\e[0m\] '

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export CLICOLOR=1

# aliases
#alias vi='nvim'
alias py='python3'
alias free='free -h'
alias tks='tmux kill-server'
alias c='clear'

alias r='[ -f "r.sh" ] && bash r.sh'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Create an alias to easily call the function
#alias ftf='tmux_sessionizer'

#bind -x '"\C-f": "ftf"'
alias config='/usr/bin/git --git-dir=/home/henry/.dotfiles/ --work-tree=/home/henry'
# edited comment
