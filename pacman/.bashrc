#powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

#nvm
source /usr/share/nvm/init-nvm.sh

#aliases
alias gc="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias gcp="git cherry-pick"

gs() {
    git rebase -i $(git merge-base origin/develop $(git branch | grep \* | cut -d ' ' -f2))
}
gp() {
    git push origin $(git branch | grep \* | cut -d ' ' -f2)
}
gr() {
    git fetch origin && git rebase origin/$1
}
gac () {
    git add .
    git commit -m $1
    gp
}

#work aliases
alias fe='cd ~/repos/golf-portal/src/TrackManRangeWebSite/clientapp/'
alias fes='fe && npm start'
alias fef='fe && npm ci && npm start'
alias feg='fe && npm run generate'
alias be='cd ~/repos/golf-portal/src/TrackManRangeWebSite'
alias bes='cd ~/repos/golf-portal/src/TrackManRangeWebSite && dotnet run'
alias bef='cd ~/repos/golf-portal/src/TrackManRangeWebSite && dotnet restore --interactive && dotnet run'
