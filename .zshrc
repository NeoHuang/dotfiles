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
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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

# shell
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias so="source"
alias :q="exit"

# android studio
alias adb="~/Library/Android/sdk/platform-tools/adb"

# git
alias gcam="git commit -am"
alias ga.='g add .'
alias gaa="git add -A"
alias gbc='g rev-parse --abbrev-ref head | tr -d "\n" | pbcopy'
alias gcob="git checkout -b"
alias gco-="git checkout -"
alias gcom="git checkout master"
alias gcomb="git checkout master && gcob"
alias gcomp-="gco master && gl && gco -"
alias gcomp="gco master && gl"
alias gcompb="gco master && gl && gcob"
alias gcm="gc -m"
alias gdm="gd origin/master..HEAD"
alias gdmno="gdm --name-only"
alias gds="gd --staged"
alias gla="git log --oneline --graph --decorate --all"
alias glgg="git log --graph"
alias grbim="grbi master"
alias grbom="gcomp- && grbm"
alias grbf="gca --fixup HEAD;grb -i HEAD~2"
alias grlg="git reflog"
alias grst="git reset"
alias gbu="gb -u"
alias gphF="gph --force-with-lease"
alias gph="git push --set-upstream origin HEAD"
alias grph="gcomp- && grbm && git push --set-upstream origin HEAD"
alias grphF="grph --force-with-lease"
alias grsv="gx | xargs mvim"
alias gs="git status"
alias gsh="git show"
alias gx="git ls-files --unmerged | cut -f2 | uniq"

#go
alias got="go test"
alias gotf="go test -gocheck.f"

alias myip='ifconfig | grep "192\.[0-9]*\.[0-9]*\.[0-9]*"'

#ruby
alias rake='noglob rake'
# rbenv
eval "$(rbenv init -)"
