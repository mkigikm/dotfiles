export PATH=$PATH:/Users/matt/Library/Android/sdk:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PS1='\e[0;36m\W$\e[0m '
alias gh-pages-sync='git checkout gh-pages && git rebase master && git push origin gh-pages && git checkout master'
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#yo how does this work
