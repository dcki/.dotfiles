export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE

export EDITOR=vim

PS1='\W \u\$ '

export CLICOLOR=true
export LSCOLORS=gxfxcxdxbxegedabagaced

##### GIT #####

# You can check the value of an alias with `alias name` or `type name`, e.g. `alias glog`.
alias glog='git log'
alias glogp='git log -p'
alias gits='git status'
alias gitmodified='git status | grep modified | sed -e "s/.*modified: *//"'

# Don't need to do this more than once ever, but putting it here to remember.
git config --global core.pager 'less -+$LESS -R'

# Execute the Git auto-completion script.
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

##### CHROME MULTIPLE TABS #####

# You can use this to open multiple tabs in Chrome!
alias google-chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

##### USE CORRECT RUBY GEM VERSIONS #####

# Always use same version of bundler as production.
#alias bundle='bundle _x.y.z_'

alias rake='bundle exec rake'
alias rspec='bundle exec rspec'

##### RBENV #####

export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

echo 'Executed .bash_profile'
echo ''
