# Vim-Plug

Install vim-plug with the following command:

```Shell
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Language Servers

Install `clangd` and `pyright` for C++ and Python support.

# Python provider

I use `pyenv` to setup a seperate virtualenv for neovim. Explicitly specifying the provider improves load times for .py files.
