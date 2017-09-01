# ohmyzsh-plugin

helps user to access espn from commandline using zsh.

## Four leagues ##
  NBA,
  MLB,
  NFL,
  NCCAF

## optional params ## 
scoreboard,
standings,
schedule

### Adding a new plugin

go to 

##### _~/.zshrc_

add
```shell
plugins=(git bundler espn)
```

Then, create a `espn` directory inside the `plugins` folder and an initialization script to launch your plugin. This script has to follow a naming convention, as all plugin files must have an ending of `.plugin.zsh`. Your file tree should look like this:

```
zsh_custom
└── plugins
    └── espn
        └── espn.plugin.zsh
```

