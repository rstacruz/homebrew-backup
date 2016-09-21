# homebrew-backup
> Back up your Homebrew profile

## Deprecation notice

:warning: As of [Homebrew v1.0.0](http://brew.sh/2016/09/02/homebrew-1.0.0/), Homebrew now comes with a `brew bundle dump` command. homebrew-backup continues to be functional, but I recommend moving to `brew bundle` instead.

## Introduction

```sh
brew tap rstacruz/backup
brew backup
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

<br>

Thanks
------

**brew-backup** © 2015+, Rico Sta. Cruz. Released under the [MIT] License.<br>
Authored and maintained by Rico Sta. Cruz with help from contributors ([list][contributors]).

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[MIT]: http://mit-license.org/
[contributors]: http://github.com/rstacruz/brew-backup/contributors
