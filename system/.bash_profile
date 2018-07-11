
export ANDROID_HOME=~/Library/Android/sdk

export PATH="$PATH:$(yarn global bin)"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/usr/local/opt/openssl/bin/:$PATH"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools" # Add for adb
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"


# [[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source $HOME/.dotfiles/system/alias.sh

# alias mongod-local='mongod --dbpath data/db'
# alias mongo-local='mongo localhost/dev-Briteblue -u $(< /opt/.mongo_user} -p $(< /opt/.mongo_pass)'

# function set_proxy {
#     export http_proxy="http://192.168.3.6:3128" # network setup
#     export https_proxy="http://192.168.3.6:3128" # network setup
# }

# function unset_proxy {
#     export http_proxy="" # network setup
#     export https_proxy="" # network setup
# }

# unset_proxy

source ~/.bashrc
source ~/.bash_prompt
