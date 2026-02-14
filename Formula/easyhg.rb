class Easyhg < Formula
  desc "Lazygit-style terminal UI for Mercurial"
  homepage "https://github.com/shuyang790/EasyHg"
  url "https://github.com/shuyang790/EasyHg/archive/f787a84d3bd666661bdf8f7dcc331b6e5429ece9.tar.gz"
  sha256 "7d69a32f5c6f8ef611ff4172f87ba1f887394ec14713fcdfb005f2f0d0c37d77"
  version "0.2.4"
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
    assert_match "0.2.4", shell_output("#{bin}/easyhg --version")
  end
end
