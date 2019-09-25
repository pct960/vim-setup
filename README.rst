A simple vim configuration to replace your buggy IDE
====================================================

How to get it working

#. Install `pathogen <https://github.com/tpope/vim-pathogen>`_ plugin manager for vim::

     mkdir -p ~/.vim/autoload ~/.vim/bundle && \
     curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#. Install `NERDTree <https://github.com/scrooloose/nerdtree>`_::

     git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

#. Now install `vim-nerdtree-tabs <https://github.com/jistr/vim-nerdtree-tabs>`_::
   
     cd ~/.vim/bundle
     git clone https://github.com/jistr/vim-nerdtree-tabs.git
     
#. Paste the contents of the vimrc file in this repo to your own ``~/.vimrc`` and you're good to go

Features
=============
Apart from the features the vanilla vim configuration provides (line numbers, relative line numbers, smart indent etc.) 
the config has been extended to add a few more features.

#. Nerdtree is automatically loaded when vim is opened
#. Opening a file places the focus on the file instead of on the nerdtree pane
#. Closing a file, closes both the file and the nerdtree pane (provided no other tabs are open)
#. To open a file in a new tab, press ``t`` and to open it in split mode press ``s`` (This is a nerdtree feature, but do read further)
#. Now, to easily switch between tabs use ``Ctrl + ←`` and ``Ctrl + →``

Credits
=======
`rraks <https://github.com/rraks/configs>`_ for the vanilla vim configuration
