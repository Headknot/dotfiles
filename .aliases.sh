# Clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

# Files
alias l="ls -o -hX --group-directories-first"
alias la="ls -o -AhX --group-directories-first"
alias j="jump"
alias v='vim'


# Config
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias i3conf="vim ~/.config/i3/config"
alias xdef="vim ~/.Xdefaults"

# Man
alias h='tldr'

#webshare
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

#scrot
alias screenshot='scrot -d 3 -c -s -z -q 100 "screenshot %Y, %B, %d, %H:%M:%S.png"'
