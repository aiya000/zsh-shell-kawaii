#!/usr/bin/env zsh

# Initialize confirations
source $(dirname $0)/init.zsh

build_prompt () {
	# Define Kawaii Maid with exit statuses
	local maid="%(?.%{${fg_bold[green]}%}.%{${fg_bold[blue]}%})%(?!(*^-^)!(;^-^%))%{${reset_color}%}"

	# Set fake host name
	if [ $SHELL_KAWAII_HOST_VISIBILITY -eq 1 ] ; then
		local info="%{$fg[yellow]%}${SHELL_KAWAII_FAKE_USERNAME}%{$fg[green]%}@%{$fg[yellow]%}${SHELL_KAWAII_FAKE_HOSTNAME}%{$reset_color%}"
	fi

	# Show Kawaii Maid
	if [ $SHELL_KAWAII_HER_VISIBILITY -eq 1 ] ; then
		local face="${maid}%{$fg[green]%}</%{$fg[yellow]%}${info}%{$fg[green]%}/%{$reset_color%}"
	else
		local face="${info}"
	fi

	# Show current directory
	local current_dir="%{$fg[yellow]%}%~%{$reset_color%}"

	# Apply Kawaii Maid
	export PROMPT="${face} ${current_dir}%(!.#.$)%{$reset_color%} "
}

build_prompt
