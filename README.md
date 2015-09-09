# brew-backup
Backs up your [Homebrew] profile.

```sh
brew-backup
```

Creates the following files:

- `brew.sh` — List of [Homebrew] packages
- `cask.sh` - List of cask packages, if [Cask] is installed
- `index` - List of versions

On a different machine, you can run `brew.sh` and `cask.sh` to reinstall the same packages.

Optional, but recommended: commit these files into a Git repo and share them to the world!

[Homebrew]: http://brew.sh/
[Cask]: http://caskroom.io/


<br>

## Examples

 - Example `brew.sh`:

  ```sh
  # taps
  brew tap homebrew/versions
  brew tap neovim/neovim
  
  # packages
  brew install aria2
  brew install autoconf
  brew install autojump --HEAD
  ...
  ```
  
- Example `cask.sh`:

  ```sh
  # taps
  brew tap caskroom/cask
  brew tap caskroom/fonts
  brew install caskroom/cask/cask

  # casks
  brew cask install alfred
  brew cask install appcleaner
  brew cask install dropbox
  ...
  ```

NB: API still subject to change
