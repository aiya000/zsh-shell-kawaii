# zsh-shell-kawaii

## About
The tool of `$PROMPT`.  
You can define `$PROMPT` with (or without) her :+1:

She is ↓  
![her feature](her_feature.png)

## Examples
![example1](example1.png)  
![example2](example2.png)  
![example3](example3.png)

## Install
The case of using zplug.

.zshrc
```zsh
zplug 'aiya000/zsh-shell-kawaii'
```


## Shell variables
+ `$SHELL_KAWAII_HER_VISIBILITY`
    - default value (bool): 0
    - Show pretty character if the value is 1
+ `$SHELL_KAWAII_FAKE_USERNAME`
    - default value (string): `$(whoami)`
    - Show as the user name
+ `$SHELL_KAWAII_FAKE_HOSTNAME`
    - default value (string): `$(hostname)`
    - Show to the host part if `$SHELL_KAWAII_HOST_VISIBILITY` is 1
+ `$SHELL_KAWAII_HOST_VISIBILITY`
    - default value (bool): 1
    - Don't show `$SHELL_KAWAII_FAKE_HOSTNAME` on the `$PROMPT` if the value is 0
+ `$SHELL_KAWAII_CLI_TO_LOW`
    - default value (bool): 0
    - Insert line break between the feature and CLI
+ `$SHELL_KAWAII_USER_DELIMITER`
    - default value (string): '$'
    - Show before CLI


## Setting example
```zsh
# zsh-shell-kawaii
export SHELL_KAWAII_HER_VISIBILITY=1
export SHELL_KAWAII_HOST_VISIBILITY=1
export SHELL_KAWAII_FAKE_USERNAME='aiya_000'
export SHELL_KAWAII_FAKE_HOSTNAME='Arch'
```

```zsh
export SHELL_KAWAII_HER_VISIBILITY=1
export SHELL_KAWAII_HOST_VISIBILITY=1
export SHELL_KAWAII_FAKE_USERNAME='☆ミ'    # Dancing stars
export SHELL_KAWAII_FAKE_HOSTNAME='aiya000' # ミ☆   on me!
export SHELL_KAWAII_CLI_TO_LOW=1
export SHELL_KAWAII_USER_DELIMITER='>>>'
```
