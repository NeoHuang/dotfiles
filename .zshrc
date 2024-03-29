# Path to your oh-my-zsh installation.
export ZSH=/Users/zhiyihuang/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/zhiyihuang/workspace/protoc-3.0.0-osx-x86_64/bin/:/Users/zhiyihuang/workspace/go/bin"
export BACKEND="/Users/zhiyihuang/workspace/go/src/github.com/adjust/backend"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#
PERL_MM_OPT="INSTALL_BASE=/Users/zhiyihuang/perl5"; export PERL_MM_OPT;

source ~/.alias.zsh

# rbenv
eval "$(rbenv init -)"

ulimit -n 1024

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export ANDROID_HOME=$HOME/Library/Android/sdk/
export JAVA_HOME=$(/usr/libexec/java_home)

# add android env
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:/usr/include"
export EDITOR="vim"

export AWS_REGION=eu-central-1
export KOPS_CLUSTER_NAME=neohuang.k8s.local
export KOPS_STATE_STORE=s3://kops-state-store.neohuang.com

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zhiyihuang/workspace/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zhiyihuang/workspace/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/zhiyihuang/workspace/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zhiyihuang/workspace/google-cloud-sdk/completion.zsh.inc'; fi
export GO111MODULE=auto


export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export KUBECONFIG=~/.kube/config:~/.kube/adjust-config
