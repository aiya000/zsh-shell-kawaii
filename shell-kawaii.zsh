#!/usr/bin/env zsh

# Set fake host name
if [ $SHELL_KAWAII_HOST_VISIBILITY -eq 1 ] ; then
	kawaii_info="%{$fg[yellow]%}${SHELL_KAWAII_FAKE_USERNAME}%{$fg[green]%}@%{$fg[yellow]%}${SHELL_KAWAII_FAKE_HOSTNAME}%{$reset_color%}"
fi

# Show kawaii character
if [ $SHELL_KAWAII_SHE_VISIBILITY -eq 1 ] ; then
	kawaii_face="%{$fg[green]%}(*^-^)</%{$fg[yellow]%}${kawaii_info}%{$fg[green]%}/%{$reset_color%}"
else
	kawaii_face="${kawaii_info}"
fi

# Show current directory
kawaii_current_dir="%{$fg[yellow]%}%~%{$reset_color%}"

# Apply Kawaii
PS1="${kawaii_face} ${kawaii_current_dir}%(!.#.$)%{$reset_color%} "
