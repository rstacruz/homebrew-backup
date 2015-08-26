# brew-backup
Backs up your [Homebrew] profile.

```sh
$ brew-backup > backup.sh

#!/usr/bin/env sh
# brew-backup on Wed Aug 26 16:33:32 PHT 2015

# taps
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap neovim/neovim

# packages
brew install aria2
brew install autoconf
brew install autojump
...

# casks
brew cask install alfred
brew cask install appcleaner
brew cask install dropbox
...
```

[Homebrew]: https://brew.sh
