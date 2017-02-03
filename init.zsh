#!/usr/bin/env zsh
# Define the variables with the default value

# Kawaii visit on the prompt
if [ -z "$SHELL_KAWAII_HER_VISIBILITY" ] ; then
	# default:0, valid:0 or 1
	export SHELL_KAWAII_HER_VISIBILITY=0
fi

if [ -z "$SHELL_KAWAII_FAKE_USERNAME" ] ; then
	# default:$(whoami), valid:string
	export SHELL_KAWAII_FAKE_USERNAME=$(whoami)
fi

if [ -z "$SHELL_KAWAII_FAKE_HOSTNAME" ] ; then
	# default:$(hostname), valid:string
	export SHELL_KAWAII_FAKE_HOSTNAME=$(hostname)
fi

if [ -z "$SHELL_KAWAII_HOST_VISIBILITY" ] ; then
	# default:1, valid:0 or 1
	export SHELL_KAWAII_HOST_VISIBILITY=1
fi
