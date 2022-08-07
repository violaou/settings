# Useful Tools and Extensions

---

# 🧑‍💻Visual Studio Code

### Helpful Extensions

- **Code Spell Checker** ✅- [https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- **Better Comments 📜** : [https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- **Auto Rename Tag 🏷** : [https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
- **Bracket Pair Colorizer 2 🌈**: [https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2) (Note: this is now also a built in feature in vscode: [https://code.visualstudio.com/blogs/2021/09/29/bracket-pair-colorization#_what-we-did](https://code.visualstudio.com/blogs/2021/09/29/bracket-pair-colorization#_what-we-did) )
- **Theme Switch 🔦:**  [https://marketplace.visualstudio.com/items?itemName=Fooxly.themeswitch](https://marketplace.visualstudio.com/items?itemName=Fooxly.themeswitch)
    - Toggles between a user defined light and dark theme. Good if you want to use an easy to see theme for screen sharing then go back to whatever you prefer after.
- **GitLens 🔎**: [https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
    - git blame on every line, line history, etc

## 📚 Using [Mono Fonts with Ligatures](https://www.hanselman.com/blog/monospaced-programming-fonts-with-ligatures) for Code

### **Fira Code:** [https://github.com/tonsky/FiraCode](https://github.com/tonsky/FiraCode)

The most widely adapted and probably the the font with the most ligature support.

![https://tjay.dev/content/images/2019/09/image-6.png](https://tjay.dev/content/images/2019/09/image-6.png)

### **Cascadia Code:** [https://github.com/microsoft/cascadia-code](https://github.com/microsoft/cascadia-code)

Microsoft's shot at making a ligature font. What sets it apart from Fira is the ability to have an italics set and cursive italics (this option has to be enabled separately, see the README.) Has a version of it (`Cascadia (Code|Mono) PL`) that has Powerline symbols embedded into it if you want to use it in terminal environments. 


### ✨ **Some other fonts for your consideration:**

- **Anything from here (with comparisons)**: [https://betterwebtype.com/articles/2020/02/13/5-monospaced-fonts-with-cool-coding-ligatures/](https://betterwebtype.com/articles/2020/02/13/5-monospaced-fonts-with-cool-coding-ligatures/)
- **Victor Mono:** [https://rubjo.github.io/victor-mono/](https://rubjo.github.io/victor-mono/)

### 🧑‍💻 Using ligature fonts in VS Code:

1. Download and add the font to Font Book.
2. Open the settings.json file and add :

```json
"editor.fontLigatures": true,
"editor.fontFamily": "'[your font name here]', 'consolas', monospace",

// for Cascadia Code: (See its github README for more details)
// "editor.fontFamily": "'Cascadia Code', 'consolas', monospace",
// "editor.fontLigatures": "'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'zero', 'onum'",
```

<aside>
📌 Potentially you will need to Reload the Window to see changes.

</aside>

---

# ᛘ Git

```bash
**config --global -l**
```

Shows your current configs in git.

### **`git last`**

This custom git alias will show the log of only last commit.

To set it up run this in the terminal: `git config --global alias.last 'log -1 HEAD --stat`

### **Git Autocorrect**

To set this git alias run this in the terminal: `git config --global help.autocorrect 20`

Git will default to its autocorrect automatically in 2 seconds

```bash
*$ git lig
WARNING: You called a Git command named 'lig', which does not exist.
Continuing in 2.0 seconds, assuming that you meant 'log'.*
```

---

# 🐢 Zsh Themes and Utilities

## 🚀 A Cooler `zsh` Terminal with Spaceship

*Based off of: [https://tjay.dev/howto-my-terminal-shell-setup-hyper-js-zsh-starship/](https://tjay.dev/howto-my-terminal-shell-setup-hyper-js-zsh-starship/) and [https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7](https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7)*

![🌈 colourful!](Useful%20Tools%20and%20Extensions%208fcc1eb512a84e119d1e08c6aa3b32d0/Untitled%203.png)

🌈 colourful!

**Spaceship-prompt features:**

- ‣
- shows current Node, Docker, AWS profile information, + more
- vi-mode
- timestamps support
- Current Git branch and rich repo status
- More options: [https://github.com/spaceship-prompt/spaceship-prompt/blob/master/docs/options.md](https://github.com/spaceship-prompt/spaceship-prompt/blob/master/docs/options.md)

**Oh My Zsh Features:**

- ‣
- Open source, community-driven framework for managing your [zsh](https://www.zsh.org/) configuration
- Has plugins of it's own
- Very,very good theme support: [https://github.com/ohmyzsh/ohmyzsh/wiki/External-themes](https://github.com/ohmyzsh/ohmyzsh/wiki/External-themes) With additional `random` theme feature if you're feeling a bit spicy
    
    ```jsx
    ZSH_THEME="random" # (...please let it be pie... please be some pie..)
    ```
    

---

### Installation

1. Download and install these two fonts into FontBook:
    1. **Mononoki Nerd Font:** [https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Mononoki](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Mononoki)
    2. **PowerlineSymbols.otf:** [https://github.com/ryanoasis/nerd-fonts/blob/master/src/glyphs/PowerlineSymbols.otf](https://github.com/ryanoasis/nerd-fonts/blob/master/src/glyphs/PowerlineSymbols.otf)

1. Install ‣,  https://github.com/athityakumar/colorls and ‣
    1. ‣ 
        
        In your terminal:
        
        ```bash
        *sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"*
        ```
        
        Open the file `~/.zshrc.pre-oh-my-zsh` and add this for nvm:
        
        ```bash
        export NVM_DIR="$HOME/.nvm"
          [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
          [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
        ```
        
        Save and close.
        
    2. https://github.com/athityakumar/colorls - file list colorizer
        
        Check your ruby installation:
        
        ```bash
        ruby -v
        ```
        
        Install:
        
        ```bash
        gem install colorls
        ```
        
    3. https://github.com/spaceship-prompt/spaceship-prompt -  [https://spaceship-prompt.sh/getting-started/](https://spaceship-prompt.sh/getting-started/)
        
        Clone this repo into zsh themes:
        
        ```bash
        git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
        ```
        
        Symlink `spaceship.zsh-theme` to your oh-my-zsh custom themes directory:
        
        ```bash
        ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
        ```
        
        Save and close.
        

3.   Open your `~/.zshrc` file and add the following:

```bash
# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# spaceship prompt specificed powerline icons and options
# For more options, consult https://github.com/spaceship-prompt/spaceship-prompt/blob/master/docs/options.md
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL=" \uf0e7"
SPACESHIP_CHAR_PREFIX=" \uf296"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

SPACESHIP_GIT_BRANCH_SUFFIX=" "
SPACESHIP_GIT_SYMBOL="שׂ "

SPACESHIP_PACKAGE_PREFIX=" ["
SPACESHIP_PACKAGE_SUFFIX="] "
SPACESHIP_PACKAGE_SYMBOL=""

SPACESHIP_NODE_SYMBOL=" "

# Path to your oh-my-zsh installation.
export ZSH="/Users/{USERNAME}/.oh-my-zsh"
# Link oh-my-zsh.sh file as well
source $ZSH/oh-my-zsh.sh"

# colorls tab complete
source $(dirname $(gem which colorls))/tab_complete.sh
# colorls alias for ls
alias ls='colorls -a'
alias lc='colorls -lA --sd'

# plugins (optional but recommended)
plugins=(git)
```

<aside>
📌 Type `source ~/.zshrc` to reload `zsh` at any point and check your results for any errors.

</aside>

![Your terminal should look something like this!](Useful%20Tools%20and%20Extensions%208fcc1eb512a84e119d1e08c6aa3b32d0/Untitled%203.png)

Your terminal should look something like this!

**If you're not interested in using Hyper, and you're done! You can stop here and enjoy your new config for `zsh` 👌**

### To use your new fonts in the `zsh` terminal within VScode:

1. Open the settings.json file for VS Code via the Command Palette : `Cmd+Shift+P`
    
    ![Untitled](Useful%20Tools%20and%20Extensions%208fcc1eb512a84e119d1e08c6aa3b32d0/Untitled%204.png)
    
2. Paste the following in this file and save.
    
    ```json
    // --------------------- TERMINAL ---------------------------
    "terminal.integrated.fontFamily": "PowerlineSymbols, 'mononoki Nerd Font Mono', monospace",
    ```
    

<aside>
📌 Check out the [VSCode page on the integrated terminal](https://code.visualstudio.com/docs/editor/integrated-terminal) for more options.

Personally, I like to add this:

```json
"terminal.integrated.cursorStyle": "line", // valid: "block", "line", "underline"
"terminal.integrated.cursorBlinking": true,
"terminal.integrated.confirmOnExit": "hasChildProcesses",
```

</aside>

## ⚡️ Hyper

[The Hyper Website](https://hyper.is/)

The Hyper Website

```bash
brew cask install hyper
```

Open and configure your `~/.hyper.js`  file:


📌 *Multiple word font names with spaces will need their own surrounding quotes.*

![https://miro.medium.com/max/1400/1*u1plFrl39pVZKJZY-z6H9Q.png](https://miro.medium.com/max/1400/1*u1plFrl39pVZKJZY-z6H9Q.png)

Plugins:

```jsx
// module.exports = {
//    config: {...},
plugins: [
      "hyper-quit",
      "hyper-highlight-active-pane",
      "hyper-single-instance",
      "hyper-relaxed",
      "hyper-fading-scrollbar",
      "hyper-tabs-enhanced",
      "hyper-save-windowstate",
      "hyperlayout",
      "gitrocket",
      "space-pull",
      "hyper-font-ligatures"
  ],
```

Save and re-open Hyper to install the plugins.
