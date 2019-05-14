# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# User specific aliases and functions

# Change umask to make directory sharing easier
umask 0002

# Ignore diplicates in command history and increase history size to 1000 lines
export HISTCONTROL=ignoredups
export HISTSIZE=1000

# My viewtiful prompt
PS1="[\[\033[1;36m\]\u\[\033[0m\]@\h] \[\033[1;37m\]\W\[\033[0m\] $ "
