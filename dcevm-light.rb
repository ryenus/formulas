class DcevmLight < Formula
  desc "Dynamic Code Evolution VM for Java"
  homepage "http://www.hotswapagent.org/"
  url "https://github.com/dcevm/dcevm/releases/download/light-jdk8u51%2B2/DCEVM-light-8u51-installer.jar"
  version "jdk-8u51-light-2"
  sha256 "ef338222a57240f77077212e1be5a691e19f5e7a5cd401b4a4ba6727e6cb2494"

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
