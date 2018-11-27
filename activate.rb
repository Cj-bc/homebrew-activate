class Activate < Formula
  desc "Activate local work env"
  homepage "https://github.com/Cj-bc/activate.git"
  head "https://github.com/Cj-bc/activate.git"
  version "1.1.0"
  url "https://github.com/Cj-bc/activate/archive/v#{version}.tar.gz"
  sha256 "df6802e47e28718f316ed810673207b6ec15e19ac8181da64549b947ab3996a6"

  def install
    system "mv", "activate.sh" "activate"
    bin.install "activate"
  end

  def caveats; <<~EOS
    Please add code below to bashrc in order to activate 'activate':
    [ -f '#{bin}/activate' ] && . #{bin}/activate
  EOS
  end

end
