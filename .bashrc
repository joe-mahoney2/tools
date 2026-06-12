export PS1='\t \W$(__git_ps1) > '
export NVIM_CFG='/c/Users/xjose/AppData/Local/nvim'

alias j="z"
alias ..="cd .."
alias dd="cd -"

# --------------------------------------------------------------    
# EVAL
# --------------------------------------------------------------    
eval "$(zoxide init bash)"
eval "$(fzf --bash)"
# --------------------------------------------------------------    
#tmux
# --------------------------------------------------------------    
alias lstmux='tmux ls'
alias ntmux='tmux new -s '
alias atmux='tmux a -t '
alias ktmux='tmux kill-session -t '
# --------------------------------------------------------------    
# FD FILE
# --------------------------------------------------------------    
alias g='rg_fzf'
alias d='fd_cd'
alias f='fd_fzf'

fd_fzf() {
    local file
    file=$(fd --type f | fzf --height 40% --reverse --border)
    [ -n "$file" ] && nvim "$file"
}
# --------------------------------------------------------------    
# FD DIR
# --------------------------------------------------------------    
fd_cd() {
    local file
    dir=$(fd --type d | fzf --height 40% --reverse --border)
    [ -n "$dir" ] && cd "$dir"
}
# --------------------------------------------------------------    
# FZF RG
# --------------------------------------------------------------    
rg_fzf() {
    rg --line-number --no-heading --color=always "$1" | \
        fzf --ansi \
        --delimiter : \
        --preview 'bat --style=numbers --color=always --highlight-line {2} {1}' \
        --preview-window 'right,60%' \
        --bind 'enter:execute(nvim {1} +{2})' 
    }
