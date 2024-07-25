# My Neovim Config

if on arch install the following dependencies

``` 
git clone git@github.com:DK10WS/Neovim.git ~/.config/nvim
cd ~/.config/nvim
sudo bash reqirements.sh
```

Once This is completed run ```nvim``` and you would see all the plugins load in. Once completed close and open nvim again to see the plugins.


Run this on the nvim command shell after all plugins have loaded

```MasonInstall stylua prettier erb_lint black shfmt```

For python venv integration into the lsp update the value of include-system-site-packages to "true" which is located at 

```cd ~/.local/share/nvim/mason/packages/python-lsp-server ```


After this You are all set. 

Enjoy
