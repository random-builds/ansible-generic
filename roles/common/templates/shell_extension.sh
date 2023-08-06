ZSH_THEME="fino-time"
source $ZSH/oh-my-zsh.sh

alias a=alias
a e=export

e TF_PLUGIN_CACHE_DIR={{ system_directory }}/hashicorp
mkdir -p $TF_PLUGIN_CACHE_DIR

e LOCAL_BIN=~/.local/bin
e YARN_BIN=~/.yarn/bin
e BASE_PATH=$PATH:$LOCAL_BIN:$YARN_BIN:{{ script_directory }}
e PATH=$BASE_PATH
e VISUAL=nvim

. refresh_env
