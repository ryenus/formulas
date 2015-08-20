class HotswapAgent < Formula
  desc "Java unlimited redefinition of classes at runtime"
  homepage "http://www.hotswapagent.org/"
  url "https://github.com/HotswapProjects/HotswapAgent/releases/download/RELEASE-0.3/HotswapAgent-0.3.zip"
  version "0.3"
  sha256 "570faf1d61b8fb18f46c1dca7007d3aa7ca6487e83a63c1075fe9ef9c0c72e74"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    libexec.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    To use hotswapagent, add following command line java attributes:
        -XXaltjvm=dcevm -javaagent:<PATH_TO_AGENT>hotswap-agent.jar

    Optionally create a file named "hotswap-agent.properties" inside
    your resources directory, see available properties and default
    values:
    https://github.com/HotswapProjects/HotswapAgent/blob/master/hotswap-agent-core/src/main/resources/hotswap-agent.properties
    EOS
  end

  test do
    # TODO: something here
    system "true"
  end
end
