#!/usr/bin/env zsh

# Initialize confirations
source $(dirname $0)/init.zsh
add-zsh-hook precmd build_prompt

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
	local delim_pattern="%{$fg[cyan]%}%(!.#.${SHELL_KAWAII_USER_DELIMITER})%{$reset_color%}"

	# Apply Kawaii Maid
	if [ "$SHELL_KAWAII_CLI_TO_LOW" -eq 1 ] ; then
		#FIXME: How can I set the linebreak without this notation ?
		export PROMPT="${face} ${current_dir}%{$reset_color%}
${delim_pattern} "
	else
		export PROMPT="${face} ${current_dir}${delim_pattern}%{$reset_color%} "
	fi
}
