#!/usr/bin/env sh
ok="\033[32m✓\033[0m"

if ! which brew >/dev/null; then
  echo "Homebrew not installed"
  exit 1
fi

(
  echo '#!/usr/bin/env sh'
  echo '\n# taps'
  brew tap | grep -v cask | sed 's/^/brew tap /g'
  echo '\n# packages'
  brew list --versions | while read f; do
    if echo $f | grep -e "HEAD$" > /dev/null; then
      echo brew install ${f/ HEAD/ --HEAD}
    else
      echo brew install $(echo $f | sed 's/ .*$//')
    fi
  done
) > brew.sh
echo "$ok brew.sh"

if [ -e /usr/local/Library/Taps/caskroom ]; then
  (
    echo '#!/usr/bin/env sh'
    echo '\n# taps'
    brew tap | grep cask | sed 's/^/brew tap /g'
    echo '\n# casks'
    brew cask list | grep -v "(!)" | sed 's/^/brew cask install /g'
  ) > cask.sh
  echo "$ok cask.sh"
fi

(
  echo '---'
  echo 'taps:'
  brew tap | sed 's/^/- /g'
  echo '\nbrew:'
  brew list --versions | sed 's/^/- /g'
  if [ -e /usr/local/Library/Taps/caskroom ]; then
    echo '\ncask:'
    brew cask list --versions | sed 's/^/- /g'
  fi
) > index
echo "$ok index"
