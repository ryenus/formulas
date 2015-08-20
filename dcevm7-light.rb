class Dcevm7Light < Formula
  desc "Dynamic Code Evolution VM for Java"
  homepage "http://www.hotswapagent.org/"
  url "https://github.com/dcevm/dcevm/releases/download/light-jdk7u79%2B3/DCEVM-light-7u79-installer.jar"
  version "jdk-7u79-light-3"
  sha256 "c4bc92ab4708cca5980a8a52b70a39317e01a8c0c841e104ac481c04498606db"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    libexec.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    Usage:
    * Run java -jar installer.jar
    * Follow the instructions to install DCEVM into existing JDK/JRE
    EOS
  end

  test do
    # TODO: something here
    system "true"
  end
end
