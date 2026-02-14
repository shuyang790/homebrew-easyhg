class Easyhg < Formula
  desc "Lazygit-style terminal UI for Mercurial"
  homepage "https://github.com/shuyang790/EasyHg"
  url "https://github.com/shuyang790/EasyHg/archive/62af594d627c73c7521cceeb8bed0b8d60026b41.tar.gz"
  sha256 "91cc249f12b7bba9b46ac4588b2f8b281d612001943b41f0a1e054c615064530"
  version "0.2.1.dev.20260214.62af594"
  license "MIT"

  bottle do
    root_url "https://github.com/shuyang790/homebrew-easyhg/releases/download/bottle-0.2.1.dev.20260214.62af594"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fc9c3d3fdd87c10655209716decb6e30a1655a68c14751b1547598c39c1d241f"
    sha256 cellar: :any_skip_relocation, sequoia:      "7ae556602d84823f1423f7ad4e60cf23e14ab7bd65324589e594782555e254eb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/easyhg --version")
  end
end
