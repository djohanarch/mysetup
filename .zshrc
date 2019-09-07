PATH=$(echo $(sed 's/:/\n/g' <<< $PATH | sort | uniq) | sed -e 's/\s/':'/g')

export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

ZSH=/usr/share/oh-my-zsh/
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
ZSH_THEME="agnoster"

plugins=( archlinux systemd )

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='nano'
fi

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh

if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

. ~/.zsh/aliases.zsh

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
