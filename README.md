# Uneco vimrc for OS X and Homebrew

###1. Install Mercurial (if needed)

```
$ brew install mercurial
```

###2. Install Vim 7.3 with interpreters (if needed)

```
$ brew install "https://raw.github.com/theirix/homebrew/85ac54a68f0cbf706ef2e872730b7e7706f57c24/Library/Formula/vim.rb" --enable-interp=python,ruby
```

###3. Clone this project

```
$ git clone "https://github.com/wneko/uneco-vim.git" "$HOME/.vim" --recursive
```

###4. Store your vimrc to custom config directory  (if needed)

```
$ mv "$HOME/.vimrc" "$HOME/.vim/config/custom/user.vim"
```

###5. Setup symlink for vimrc

```
$ ln -s "$HOME/.vim/.vimrc" "$HOME/.vimrc"
```

###6. Vim Bundle Install

```
$ vim -c "NeoBundleInstall"
```

or in your Vim (Normal Mode):

``` vim-normal-mode
:NeoBundleInstall
```

###X. Optional: Install Monaco Font for Powerline 

ref. https://gist.github.com/1634235

```
$ mkdir -p "$HOME/.fonts"
$ curl -o "$HOME/.fonts/Monaco-Powerline.ttf" "https://raw.github.com/gist/1634235/d1e0dd8b745a7868444ecb0d1d6cdb593249f9d5/Monaco_Linux-Powerline.ttf"
$ fc-cache -vf
```

###X. Tips: When updating a bundle

```
$ vim -c "NeoBundleUpdate"
```

or in your Vim (Normal Mode):

``` vim-normal-mode
:NeoBundleUpdate
```

###X. Tips: When added new lines to bundle.vim 

same as "6. Vim Bundle Install".