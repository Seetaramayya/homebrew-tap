class Kubeglass < Formula
  desc "Fast, local Kubernetes dashboard in your browser"
  homepage "https://github.com/Seetaramayya/kubeglass"
  url "https://registry.npmjs.org/kubeglass/-/kubeglass-0.1.0.tgz"
  sha256 "4caa7801684d8123adc742ed388f1f89905ed10ce5fbe942b4129671c2c51d65"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "kubeglass - a local Kubernetes dashboard", shell_output("#{bin}/kubeglass --help")
  end
end
