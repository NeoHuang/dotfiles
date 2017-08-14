# shell
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias so="source"
alias :q="exit"

# android studio
alias adb="~/Library/Android/sdk/platform-tools/adb"

# git
alias gcam="git commit -am"
alias gcamf="git commit --amend --all --no-edit"
alias ga.='g add .'
alias gaa="git add -A"
alias gap="git add --patch"
alias gbc='g rev-parse --abbrev-ref head | tr -d "\n" | pbcopy'
alias gcob="git checkout -b"
alias gco-="git checkout -"
alias gcom="git checkout master"
alias gcomb="git checkout master && gcob"
alias gcomp-="gco master && gl && gco -"
alias gcomp="gco master && gl"
alias gcompb="gco master && gl && gcob"
alias gcaf="gca --fixup"
alias gcm="gc -m"
alias gdm="gd origin/master..HEAD"
alias gdmno="gdm --name-only"
alias gds="gd --staged"
alias gla="git log --oneline --graph --decorate --all"
alias glgg="git log --graph"
alias glgl="glgg --pretty=oneline"
alias grbim="grbi master"
alias grbom="gcomp- && grbm"
alias grbf="gca --fixup HEAD;grb -i HEAD~2"
alias grlg="git reflog"
alias grs="git reset"
alias grsl="git reset head~1"
alias gbu="gb -u"
alias gphF="gph --force-with-lease"
alias gph="git push --set-upstream origin HEAD"
alias grph="gcomp- && grbm && git push --set-upstream origin HEAD"
alias grphF="grph --force-with-lease"
alias grsv="gx | xargs mvim"
alias gs="git status"
alias gsp="git status --porcelain"
alias gsh="git show"
alias gshs="git show --stat"
alias gx="git ls-files --unmerged | cut -f2 | uniq"

#go
alias got="go test"
alias gotf="go test -gocheck.f"
alias gola="go list ./... | grep -v vendor"
alias gota="gola | xargs go test"

alias myip='ifconfig | grep "1[7,9]2\.[0-9]*\.[0-9]*\.[0-9]*"'

#ruby
alias rake='noglob rake'
