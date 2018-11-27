class Activate < Formula
  desc "Activate local work env"
  homepage "https://github.com/Cj-bc/activate.git"
  head "https://github.com/Cj-bc/activate.git"
  version "1.1.1"
  url "https://github.com/Cj-bc/activate/archive/v#{version}.tar.gz"
  sha256 "0a9806932dbd91e64c5068c5fba1b5690acdba4260b07fc48504597697e49eeb"

  def install
    system "mv", "activate.sh", "activate"
    bin.install "activate"
  end

  def caveats; <<~EOS
    Please add code below to bashrc in order to activate 'activate':
    [ -f '#{bin}/activate' ] && . #{bin}/activate
  EOS
  end

end
