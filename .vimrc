"Language
        set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
        set encoding=utf-8
        set langmenu=zh_CN
        let $LANG = 'en_US.UTF-8'
"关闭vi兼容
        set nocompatible
"显示行号
        set number
"高亮当前行
        set cursorline
        hi CursorcLine ctermbg=white cterm=NONE
"检测文件类型
        filetype on
"语法高亮
        syntax enable
        syntax on
"自动对齐
        set autoindent
        set smartindent
        set shiftwidth=8
"设置tab
        set tabstop=8
        set expandtab
"启用状态栏
        set ruler
"设置主题
        colorscheme solarized
        set background=dark
"标签页快捷键
        nnoremap <C-h> :tabp<CR>
        nnoremap <C-l> :tabn<CR>



"""gVim设置
if has('gui_running')
        "不显示工具栏菜单栏滚动条
        set guioptions-=T
        set guioptions-=r
        "字体
        set guifont=Source\ Code\ Pro\ 12
endif



"""ConEmu设置
if has('win32') && !has('gui_running') && !empty($CONEMUBUILD)
        set term=xterm
        set t_Co=256
        let &t_AB="\e[48;5;%dm"
        let &t_AF="\e[38;5;%dm"
endif



"""插件设置
"Vundle启用
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
"插件更新列表
        Bundle 'gmarik/vundle'
        Bundle 'altercation/vim-colors-solarized'
        Bundle 'scrooloose/nerdtree' 
        Bundle 'ervandew/supertab'
        Bundle 'vim-scripts/a.vim'
        Bundle 'plasticboy/vim-markdown'
"NERDTree文件管理
        nnoremap <F2> :NERDTreeToggle<CR>
"SuperTab
        let g:SuperTabDefaultCompletionType="context"
"a.vim
        nnoremap <silent> <F10> :A<CR>
