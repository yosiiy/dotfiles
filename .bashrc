
# Tarminalのプロンプト設定
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi

#alias ls='gls --color=auto'
#alias ll='gls -aFlhG --group-directories-first --color=auto'
alias tree='tree -N'
# macvim
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -u $HOME/.vimrc "$@"'
#alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias mvim='/Applications/MacVim.app/Contents/bin/mvim "$@"'

#function curl (){ /usr/bin/curl "$@" | perl -Xpne "s/\\u([0-9a-fA-F]{4})/chr(hex($1))/eg"; } # 出来る
#function curl (){ /usr/bin/curl $@; } # 出来る

alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

#eval "$(fasd --init posix-alias zsh-hook)"

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

exec fish
