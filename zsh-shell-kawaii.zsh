#!/usr/bin/env zsh

# Set default values
if [ -z "$SHELL_KAWAII_HER_VISIBILITY" ] ; then
	# Kawaii visit on the prompt
	export SHELL_KAWAII_HER_VISIBILITY=0
fi

if [ -z "$SHELL_KAWAII_FAKE_USERNAME" ] ; then
	# No Fake UserName
	export SHELL_KAWAII_FAKE_USERNAME=$USER
fi

if [ -z "$SHELL_KAWAII_FAKE_HOSTNAME" ] ; then
	# No Fake HostName
	export SHELL_KAWAII_FAKE_HOSTNAME=$HOSTNAME
fi

if [ -z "$SHELL_KAWAII_HOST_VISIBILITY" ] ; then
	export SHELL_KAWAII_HOST_VISIBILITY=1
fi


# Set fake host name
if [ $SHELL_KAWAII_HOST_VISIBILITY -eq 1 ] ; then
	kawaii_info="%{$fg[yellow]%}${SHELL_KAWAII_FAKE_USERNAME}%{$fg[green]%}@%{$fg[yellow]%}${SHELL_KAWAII_FAKE_HOSTNAME}%{$reset_color%}"
fi

# Show kawaii character
if [ $SHELL_KAWAII_HER_VISIBILITY -eq 1 ] ; then
	kawaii_face="%{$fg[green]%}(*^-^)</%{$fg[yellow]%}${kawaii_info}%{$fg[green]%}/%{$reset_color%}"
else
	kawaii_face="${kawaii_info}"
fi

# Show current directory
kawaii_current_dir="%{$fg[yellow]%}%~%{$reset_color%}"

# Apply Kawaii
PS1="${kawaii_face} ${kawaii_current_dir}%(!.#.$)%{$reset_color%} "
