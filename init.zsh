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
