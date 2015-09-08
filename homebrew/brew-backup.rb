require 'formula'

class Ghub < Formula
  homepage 'https://github.com/rstacruz/brew-backup'
  version '1.0.0'
  url "https://github.com/rstacruz/brew-backup/archive/v#{version}.tar.gz"

  head do
    url 'https://github.com/rstacruz/brew-backup.git', :using => :git
  end

  def install
    bin.install "bin/brew-backup"
  end
end
