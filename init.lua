require "Align.options"
require "Align.keymaps"
require "Align.packer"
require "Align.colorscheme"
-- --local Plug = vim.fn['plug#']


-- --vim.call('plug#begin', '~/.config/nvim/plugged')

-- The default plugin directory will be as follows:
--   - Vim (Linux/macOS): '~/.vim/plugged'
--   - Vim (Windows): '~/vimfiles/plugged'
--   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
-- You can specify a custom plugin directory by passing it as the argument
--   - e.g. `call plug#begin('~/.vim/plugged')`
--  - Avoid using standard Vim directory names like 'plugin'

--Make sure you use single quotes

--Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
--:Plug 'junegunn/vim-easy-align'

--Any valid git URL is allowed
--Plug 'https://github.com/junegunn/vim-github-dashboard.git'

--Multiple Plug commands can be written in a single line using | separators

--Plug 'honza/vim-snippets'

--On-demand loading
--Plug('scrooloose/nerdtree', { on =  'NERDTreeToggle' })
---Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

--Using a non-default branch
--Plug('rdnetto/YCM-Generator', { branch = 'stable' })

--Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
--Plug('fatih/vim-go', { tag = '*' })

--Plugin options
--Plug('nsf/gocode', { tag = 'v.20150303', rtp = 'vim' })

--Plugin outside ~/.vim/plugged with post-update hook
--Plug('junegunn/fzf', { dir= '~/.fzf', ['do'] = './install --all' })


---- Colors/Theme Plugins
----Plug 'gruvbox-community/gruvbox'



--Initialize plugin system
-- Automatically executes `filetype plugin indent on` and `syntax enable`.
-----vim.call('plug#end')
-- You can revert the settings after the call like so:
--  filetype indent off   " Disable file-type-specific indentation
--  syntax off            " Disable syntax highlighting
----ColorMyPencils()

print("Root init.lua loaded...")