alias python='python3'
alias ll='ls -alh'
alias killconn='honup ~/.kill_connections &'
alias findall='ps -ef | grep kill_connections'
alias x86='dev-dsk-eldorbek-2c-c36dae8d.us-west-2.amazon.com'
alias arm='dev-dsk-eldorbek-2c-b7c4b4d6.us-west-2.amazon.com'

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/.toolbox/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/lib64/:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/.toolbox/bin:$PATH
export PATH=/apollo/env/envImprovement/bin:$PATH
export PATH=/home/eldorbek/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

# start fish terminal
# exec /apollo/env/envImprovement/bin/fish

# for pprof dump
# export FONTCONFIG_PATH=/etc/fonts 

# set tux settings
tmux source-file ~/.tmux.conf

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


function ssh(){
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}