# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias lss='ls -atrl'
alias la='ls -al'
alias vi='vim'

# User specific aliases and functions
function cdu() {
  cd `sudo -u webmail /webmail/tools/userhome $1`;
}

function cdd() {
  cd `sudo -u webmail /webmail/tools/domaindir $1`;
}

m2kctrl(){
sudo -u webmail /webmail/tools/m2kctrl -s $1 -c $2;
sudo -u webmail /webmail/tools/m2kctrl -s $1 -c status;
}

reloadini(){
sudo -u webmail /webmail/tools/reloadini;
}

restartshm(){
sudo -u webmail /webmail/tools/restartshm;
}

avscan(){
sudo -u webmail /webmail/sophos/bin/avtest $1;
}
