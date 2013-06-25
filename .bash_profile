alias hosts='sudo vim /etc/hosts'
alias development='cd ~/Documents/repos/govuk/development'
alias govuk='cd ~/Documents/repos/govuk'

# scripts
alias commits='~/Documents/scripts/last_commits.sh'
alias branch_age='~/Documents/scripts/bash/branch_age.sh'
alias bash_vars='~/Documents/scripts/bash/bash_vars.sh'
alias get_branch='~/Documents/scripts/bash/get_branch.sh'

alias show_branches='~/Documents/govuk_scripts/bash/show_branches.sh'
alias find_in_apps='~/Documents/govuk_scripts/bash/find_in_apps.sh'

PATH=$PATH:/usr/local/bin/tmux-1.6:/opt/local/android-sdk-macosx/tools:/opt/local/android-sdk-macosx/platform-tools
export PATH

# bundle exec rake assets:precompile to precompile SASS
export govuk_dev_dist='lucid'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
