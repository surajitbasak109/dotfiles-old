set nocompatible              " be iMproved, required
filetype off                  " required

"set runtimepath+=~/.vim
set rtp+=~/.vim

call plug#begin()

Plug 'dense-analysis/ale'
Plug 'tobyS/pdv'
Plug 'vim-scripts/csslint.vim'
Plug 'csscomb/vim-csscomb'

"You Complete Me
"Plug 'valloric/youcompleteme'

"Deoplete
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1

" Conquer of Vim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install() }, 'branch': 'release'},

Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'

"Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Vim Project
Plug 'amiorin/vim-project'

" Mini Yank Ya ya!
Plug 'bfredl/nvim-miniyank'

" Emmet Plugin
Plug 'mattn/emmet-vim'

" Ultisnips
" Track the engine.
Plug 'SirVer/ultisnips'

" syntax highlighting for tmux.conf + other cool options
Plug 'tmux-plugins/vim-tmux' | Plug 'tmux-plugins/vim-tmux-focus-events'
" seemless navigation between vim windows / tmux pane
Plug 'christoomey/vim-tmux-navigator'

" wrapper for git and display git diff in the left gutter
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify'
" Display commits for project / file
Plug 'junegunn/gv.vim'

" surrounding text objects with whatever you want (paranthesis, quotes, html tags...)
Plug 'tpope/vim-surround'

" easily search, substitute, abbreviate multiple version of words, coercion to camel case / snake case / dote case / title case...
Plug 'tpope/vim-abolish'

" the . command can repeat whatever you want!
" http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
Plug 'tpope/vim-repeat'

" keystroke to comment automatically depending on the file you're in
Plug 'tpope/vim-commentary'

" Highlight briefly every yank text
Plug 'machakann/vim-highlightedyank'

" swap arguments in parenthesis
Plug 'machakann/vim-swap'

" add new text object (can delete between comma with di, for example)
Plug 'wellle/targets.vim'

" camel case motion
Plug 'chaoren/vim-wordmotion'

" Close the current buffer
Plug 'moll/vim-bbye'

" Match more stuff with % (html tag, LaTeX...)
Plug 'andymass/vim-matchup'

" Guten Tags
" Plug 'ludovicchabant/vim-gutentags'

" Vim Polyglot
Plug 'sheerun/vim-polyglot'
Plug 'vim-utils/vim-man'
Plug 'tweekmonster/gofmt.vim'

" FzF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" NCM2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'

" Neo Make
Plug 'neomake/neomake'

Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'itchyny/vim-gitbranch'

" React Code Snippets
Plug 'mlaursen/vim-react-snippets'

" Snipmate and it's dependencies:
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
Plug 'jwalton512/vim-blade'
"Plug 'justinmk/vim-sneak'
Plug 'easymotion/vim-easymotion'
Plug 'bkad/CamelCaseMotion'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install'  }

" PHP
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}
Plug 'nishigori/vim-php-dictionary', {'for': 'php'}
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'} " php refactoring options
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', {'for': 'php'} " php doc autocompletion

"CSS
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

" JavaScript
"Plug 'mxw/vim-jsx' " For react
Plug 'leafoftree/vim-vue-plugin'
Plug 'storyn26383/vim-vue'
Plug 'yuezk/vim-js'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'syl20bnr/spacemacs'
Plug 'roman/golden-ratio'

""""""""""""""""""""""""""""""""""""
" => Themes
""""""""""""""""""""""""""""""""""""
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Yggdroot/indentLine'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'natebosch/vim-lsc'
Plugin 'natebosch/vim-lsc-dart'
Plugin 'townk/vim-autoclose'
Plugin 'clausreinke/typescript-tools'
Plugin 'beanworks/vim-phpfmt'
Plugin 'mtth/scratch.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set rtp+=~/.vim/bundle/vim-project/
" custom starting path
call project#rc("~/development")
" default starting path (the home directory)
call project#rc()

"packadd! dracula
"syntax enable
"colorscheme dracula

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/vimrcs/coc.vim
source ~/.vim/vimrcs/keybinds.vim
"source ~/.vim/vimrcs/youcompleteme.vim
source ~/.vim/vimrcs/closetag.vim
"source ~/.vim/vimrcs/tmux.vim

try
source ~/.vim/my_configs.vim
catch
endtry
