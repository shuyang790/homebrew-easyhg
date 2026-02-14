class Easyhg < Formula
  desc "Lazygit-style terminal UI for Mercurial"
  homepage "https://github.com/shuyang790/EasyHg"
  url "https://github.com/shuyang790/EasyHg/archive/62af594d627c73c7521cceeb8bed0b8d60026b41.tar.gz"
  sha256 "91cc249f12b7bba9b46ac4588b2f8b281d612001943b41f0a1e054c615064530"
  version "0.2.1.dev.20260214.62af594"
  license "MIT"

  bottle do
    root_url "https://github.com/shuyang790/homebrew-easyhg/releases/download/bottle-0.2.1.dev.20260214.62af594"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3d925d7c82a6831d4bb12a17cef30a5e1979b538439115083add6fbae05dd0a0"
    sha256 cellar: :any_skip_relocation, sequoia:      "62dfd833077fd64413f1c95fc0d84bc6acee06467271e34285e1e1b7ec47cfd9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/easyhg --version")
  end
end
