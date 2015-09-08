require 'formula'

class BrewBackup < Formula
  homepage 'https://github.com/rstacruz/brew-backup'

  head do
    url 'https://github.com/rstacruz/brew-backup.git', :using => :git
  end

  def install
    bin.install "brew-backup"
  end
end
