# zsh-shell-kawaii

## About
zsh-shell-kawaii define your `$PROMPT`.  
zsh-shell-kawaii presents easily `$PROMPT` configurations for you.  
You can show arbitrary username and hostname .  
----... and pretty character :P

## View Example
![example1](example1.png)  
My $USER is 'aiya000', but I show 'aiya\_000' as username.

zsh-shell-kawaii detect exit statuses.  
![example2](example2.png)


## Install
Example for use zplug.

.zshrc
```zsh
zplug 'aiya000/zsh-shell-kawaii'
```


## Configurations
* shell variables
    + `SHELL_KAWAII_HER_VISIBILITY`
        - default value (bool): 0
        - if this value is 1, I show pretty character :P
    + `SHELL_KAWAII_FAKE_USERNAME`
        - default value (string): Your $USER
        - I show this value as username on your prompt
        - but I don't overwrite your `$USERNAME` value
    + `SHELL_KAWAII_FAKE_HOSTNAME`
        - default value (string): Your $HOSTNAME
        - I show this value as hostname on your prompt
        - but I don't overwrite your `$HOSTNAME` value
    + `SHELL_KAWAII_HOST_VISIBILITY`
        - default value (bool): 1
        - if this value is 0, I don't show hostname on your prompt


## Config Example
### Code
```zsh
# zsh-shell-kawaii
export SHELL_KAWAII_HER_VISIBILITY=1
export SHELL_KAWAII_HOST_VISIBILITY=1
export SHELL_KAWAII_FAKE_USERNAME='aiya_000'
export SHELL_KAWAII_FAKE_HOSTNAME='Arch'
```

### Result Prompt
![result](result.png)
