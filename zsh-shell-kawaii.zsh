#!/usr/bin/env zsh

# Initialize confirations
source $(dirname $0)/init.zsh

build_prompt () {
	# Define the variable. It looks like 'john@ArchLinux' or 'john'
	local user_env="%{$fg[yellow]%}${SHELL_KAWAII_FAKE_USERNAME}%{$fg[green]%}"
	if [ "$SHELL_KAWAII_HOST_VISIBILITY" -eq 1 ] ; then
		local user_env="${user_env}@%{$fg[yellow]%}${SHELL_KAWAII_FAKE_HOSTNAME}%{$reset_color%}"
	fi

	# Define the expression of previous exit code
	if [ "$SHELL_KAWAII_HER_VISIBILITY" -eq 1 ] ; then
		# Define the maid. She expresses the state of previous exit code
		local maid="%(?.%{${fg_bold[green]}%}.%{${fg_bold[blue]}%})%(?!(*^-^)!(;^-^%))%{${reset_color}%}"
		local feature="${maid}%{$fg[green]%}</%{$fg[yellow]%}${user_env}%{$fg[green]%}/%{$reset_color%}"
	else
		local feature="${user_env}"
	fi

	local current_dir="%{$fg[yellow]%}%~%{$reset_color%}"
	local delim_pattern="%{$fg[cyan]%}%(!.#.${SHELL_KAWAII_USER_DELIMITER})%{$reset_color%}"

	# Apply result
	if [ "$SHELL_KAWAII_CLI_TO_LOW" -eq 1 ] ; then
		#FIXME: How can I set the linebreak without this notation ?
		export PROMPT="${feature} ${current_dir}%{$reset_color%}$(eval "$SHELL_KAWAII_MORE_PROMPT_COMMAND")
${delim_pattern} "
	else
		export RPROMPT="$(eval "$SHELL_KAWAII_MORE_PROMPT_COMMAND")"
		export PROMPT="${feature} ${current_dir}${delim_pattern}%{$reset_color%} "
	fi
}

# Initialize $PROMPT
build_prompt

# Redraw $PROMPT when input was caught or keymap was changed
function zle-line-init zle-keymap-select {
	build_prompt
	zle reset-prompt
}
