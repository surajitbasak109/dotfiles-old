# My Awesome Dot files

## Requrements

Need to be installed `zsh`, `tmux`.

Install by running

```bash
sudo chmod +x install.sh
./install.sh
```

After installing all files will be symlinked from the `dotfiles` directory

Now if you run new terminal session you will get an ugly screen saying that some of the files cannot be found.

### TODO

-   At first we need to install powerlevel10k theme first, so go to [this link](https://github.com/romkatv/powerlevel10k#oh-my-zsh) and follow the instructions to install it using oh-my-zsh
-   Now we need to install git status from [this link](https://github.com/romkatv/gitstatus#using-from-zsh). Remember you need to clone this repo in your `$HOME` directory.
-   Now we ned to fix another problem that is `plugin 'fast-syntax-highlighting' not found`
    Clone the Repository.
    ```bash
    git clone https://github.com/zdharma/fast-syntax-highlighting \$ZSH/plugins/fast-syntax-highlighting
    ```
-   Another problem we need to fix `plugin 'git-flow-completion' not found`
    Clone the Repository
    ```bash
    git clone https://github.com/bobthecow/git-flow-completion ~/.oh-my-zsh/custom/plugins/git-flow-completion
    ```
-   Last but not least we need t fix another plugin problem `plugin 'zsh-syntax-highlighting' not found`
    At first go to your home folder then use following command in your terminal

    ```bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    ```
