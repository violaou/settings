# settings
shell settings or the like


Install iterm
Install brew

zsh:
1. https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
2. https://github.com/ohmyzsh/ohmyzsh
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```
3. Clone this repo:

    ```zsh
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
    ```

    Symlink `spaceship.zsh-theme` to your oh-my-zsh custom themes directory:

    ```zsh
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    ```
    
    Set `ZSH_THEME="spaceship"` in your `.zshrc`.


### clone

 ```zsh
git clone https://github.com/powerline/fonts.git --depth=1
```


### install

 ```zsh
cd fonts
./install.sh
cd ..
rm -rf fonts
```

Node:
install nvm

```zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
```zsh
npm install -g npm
```
