local vim = vim
vim.cmd([[
  let g:startify_bookmarks = [ 
      \ {'zshrc': '~/.zshrc'},
      \ {'xinitrc': '~/.xinitrc'},
      \ {'Xresources': '~/.Xresources'},
      \ {'tmux': '~/.tmux.conf'},
      \ {'nvim': '/home/raelon/.config/nvim/'},
      \ {'dwm': '/home/raelon/.local/share/builds/dwm_patched/'},
      \ {'surf': '/home/raelon/.local/share/builds/surf/'},
      \ {'dotfiles': '/home/raelon/.dotfiles/'},
      \ {'pyShelf': '/home/raelon/.local/share/builds/pyShelf/'},
      \ ]
  let g:startify_commands = [
      \ ':help reference',
      \ ['Vim Reference', 'h ref'],
      \ {'h': 'h ref'},
      \ ]
]])
