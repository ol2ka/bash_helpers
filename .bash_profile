export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagaced
#export TGRID_PROPERTIES_DIR=/etc/tgrid/tg-config
##
# Your previous /Users/e3ckuo/.bash_profile file was backed up as /Users/e3ckuo/.bash_profile.macports-saved_2015-02-03_at_14:23:42
##
# 
## Next 2 lines for DLP development
#export TGRID_PROPERTIES_DIR=/Users/e3ckuo/DLPDevelopment/dcm
#export DLP_C_REM_PROPERTIES_DIR=/Users/e3ckuo/DLPDevelopment/dcm

# MacPorts Installer addition on 2015-02-03_at_14:23:42: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
   . `brew --prefix`/etc/bash_completion
fi
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
if [ -f ~/.maven-completion.bash ]; then
  . ~/.maven-completion.bash
fi
# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;32m\]" #means no background and white lines
HI="\[\033[0;32m\]" #change this for letter colors
#HII="\[\033[0;31m\]" #change this for letter colors
HII="\[\033[0;32m\]"
SI="\[\033[0;33m\]" #this is for the current directory
IN="\[\033[0m\]"

export PS1="$NM$HI\u@$HII\h $SI\w$NM$ $IN"
#export PS1="$NM[$HI\u@$HII\h $SI\w$NM]$IN"
#export PS1="\[\e[1;32m\][\u@\h $SI\w$NM]\$\[\e[0m\] "

# Useful aliases
alias ls='ls $LS_OPTIONS -hF'
alias ll='ls $LS_OPTIONS -lhF'
alias l='ls $LS_OPTIONS -lAhF'
alias cd..="cd .."
# Git
alias gst='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gco='git checkout'
alias gcob='git checkout -b'
alias ga='git add'
alias gcm='git commit -m'
alias gl='git lola'
# Maven
alias mci='mvn clean install'
alias mcp='mvn clean package'
alias mci_notest='mvn -Dmaven.test.skip=true clean install'
# Finder show/hide hidden files
alias finderHiddenFilesShow='defaults write com.apple.finder AppleShowAllFiles YES;killall Finder /System/Library/CoreServices/Finder.app'
alias finderHiddenFilesHide='defaults write com.apple.finder AppleShowAllFiles NO;killall Finder /System/Library/CoreServices/Finder.app'

# git_ps1
source /Users/e3ckuo/git/git-helper-scripts/git_ps1.sh

# git prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files
GIT_PROMPT_START="$NM$HI\u@$HII\h $SI\w$IN"
GIT_PROMPT_END="$(__git_ps1)$NM$ $IN"
GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
source ~/.bash-git-prompt/gitprompt.sh

### Docker

source ~/.docker_functions

#####

# MacPorts Installer addition on 2017-01-23_at_16:19:17: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
. <(gr completion)
