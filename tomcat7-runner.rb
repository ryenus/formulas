class Tomcat7Runner < Formula
  desc "Run Tomcat 7 without an installed distribution"
  homepage "https://github.com/jsimone/webapp-runner"
  url "https://repo1.maven.org/maven2/com/github/jsimone/webapp-runner/7.0.57.2/webapp-runner-7.0.57.2.jar"
  sha256 "a5aeedb8a927ac0fea2689e1222f9930451bc07adad5c0c744b1097e9b2a2580"

  def install
    libexec.install Dir["*"]

    bin.write_jar_script libexec/"webapp-runner-#{version}.jar", "tomcat7-runner"
  end

  test do
    usage = shell_output("#{bin}/tomcat7-runner --help", 1)
    assert_match /--path/, usage
    assert_match /--port/, usage
  end
end
