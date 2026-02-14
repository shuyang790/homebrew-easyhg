class Easyhg < Formula
  desc "Lazygit-style terminal UI for Mercurial"
  homepage "https://github.com/shuyang790/EasyHg"
  url "https://github.com/shuyang790/EasyHg/archive/62af594d627c73c7521cceeb8bed0b8d60026b41.tar.gz"
  sha256 "91cc249f12b7bba9b46ac4588b2f8b281d612001943b41f0a1e054c615064530"
  version "0.2.1.dev.20260214.62af594"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/easyhg --version")
  end
end
