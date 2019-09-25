VIM-IDE: Freedom from slow and buggy IDEs
*****************************************

|license|

.. |license| image:: https://img.shields.io/badge/license-ISC-blue.svg
    :target: https://github.com/pct960/vim_config/blob/master/LICENSE

At some point or the other we have all sworn at our IDEs for being painfully slow, buggy or both. Here's ``vim`` to the rescue. This is a simple and non-intrusive vim config that can somewhat replace your IDE (more features are coming soon).

Installation
============

#. Clone the repository and run the install file::

     git clone https://github.com/pct960/vim-ide && ./install

Features
========
Apart from the features the vanilla vim configuration provides (line numbers, relative line numbers, smart indent etc.) 
the config has been extended to add a few more features.

#. Nerdtree is automatically loaded when vim is opened
#. Opening a file places the focus on the file instead of on the nerdtree pane
#. Closing a file, closes both the file and the nerdtree pane (provided no other tabs are open)
#. To open a file in a new tab, press ``t`` and to open it in split mode press ``s`` (This is a nerdtree feature, but do read further)
#. Now, to easily switch between tabs use ``Ctrl ←`` and ``Ctrl →``

.. image:: screenshot.png

Contributions
=============
Feel free to open a pull request, raise an issue or a feature request.


Credits
=======
 `amix <https://github.com/amix/vimrc>`_ and `rraks <https://github.com/rraks/configs>`_
