# $bash_conf/alias-init.bash: aliasの設定
# ---------------------------------------

# alias
# --------------------------------------
alias aliaslist='cat ~/.bash/conf/alias-init.bash | grep alias -n'
alias ..1='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'
alias ..6='cd ../../../../../../'
alias ..7='cd ../../../../../../../'
alias ..8='cd ../../../../../../../../'
alias ff='find . -type f -name'
alias fd='find . -type d -name'
alias grep='grep --color=always'
alias grepwfn='grep -n --color=always --with-filename --no-messages --binary-files=without-match'
# alias less='less -N -M'
alias hn='head -n'
alias tn='tail -n'
alias sb='source ~/.bashrc'
alias up="cd ..; ls -l"
alias cdl='a=(`ls -1`) ; ls -1 | cat -n ; read b ; cd ${a[$b-1]}'
alias rgrep='find . -name "*.svn*" -prune -o -type f -print0 | xargs -0 grep'
alias dus='du ./ -b | sort -rn | numfmt --to=iec --suffix=B --padding=5'
alias vg='vagrant'


# ls
if [ "$(uname)" = 'Darwin' ]; then # for mac
  export LSCOLORS=xbfxcxdxbxegedabagacad
  alias ls='ls -G'
  alias la='ls -aF -G'
  alias ll='ls -alF -G'
else # for linux
  alias ls='ls --color=auto'
  alias la='ls -aF --color=auto'
  alias ll='ls -alF --color=auto'
fi


# git
# --------------------------------------
alias gc='git commit'
alias ga='git add'
alias gd='git diff'
alias gft='git fetch'
alias gll='git pull'
alias glr='git pull --recursive'
alias gps='git push'
alias gdc='git diff --cached'
alias gdn='git diff --name-status'
alias gl="git log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso"
alias gb='git branch'
alias gbd='git branch --merged | grep -v "*" | xargs -I % git branch -d %'
alias gco='git checkout'
alias gcom='git checkout master'
alias gsh='git show'
alias gs='git status'
alias gm='git mergetool'
alias gri='git rebase -i'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gcp='git cherry-pick'
alias gsb='git show-branch --current'

alias gbdm='git branch --merged | grep -v "*" | xargs -I % git branch -d %'
alias gbdmo='git branch -r --merged master | grep -v -e master -e develop | sed -e "s% *origin/%%" | xargs -I% git push --delete origin %'

