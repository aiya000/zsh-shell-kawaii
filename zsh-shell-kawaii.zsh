#!/usr/bin/env zsh

# Initialize confirations
source $(dirname $0)/init.zsh

# Define Kawaii Maid with exit statuses
kawaii_maid="%(?.%{${fg_bold[green]}%}.%{${fg_bold[blue]}%})%(?!(*^-^)!(*~_~%))%{${reset_color}%}"

# Set fake host name
if [ $SHELL_KAWAII_HOST_VISIBILITY -eq 1 ] ; then
	kawaii_info="%{$fg[yellow]%}${SHELL_KAWAII_FAKE_USERNAME}%{$fg[green]%}@%{$fg[yellow]%}${SHELL_KAWAII_FAKE_HOSTNAME}%{$reset_color%}"
fi

# Show Kawaii Maid
if [ $SHELL_KAWAII_HER_VISIBILITY -eq 1 ] ; then
	kawaii_face="${kawaii_maid}%{$fg[green]%}</%{$fg[yellow]%}${kawaii_info}%{$fg[green]%}/%{$reset_color%}"
else
	kawaii_face="${kawaii_info}"
fi

# Show current directory
kawaii_current_dir="%{$fg[yellow]%}%~%{$reset_color%}"

# Apply Kawaii Maid
PROMPT="${kawaii_face} ${kawaii_current_dir}%(!.#.$)%{$reset_color%} "
