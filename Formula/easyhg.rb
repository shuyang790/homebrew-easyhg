class Easyhg < Formula
  desc "Lazygit-style terminal UI for Mercurial"
  homepage "https://github.com/shuyang790/EasyHg"
  url "https://github.com/shuyang790/EasyHg/archive/f787a84d3bd666661bdf8f7dcc331b6e5429ece9.tar.gz"
  sha256 "7d69a32f5c6f8ef611ff4172f87ba1f887394ec14713fcdfb005f2f0d0c37d77"
  version "0.2.4"
  license "MIT"

  bottle do
    root_url "https://github.com/shuyang790/homebrew-easyhg/releases/download/bottle-0.2.4"
    rebuild 3
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ad06aa2e2bfa16e19a134ad1d5a349d9569a3b202107eb8faba04210e3c051d8"
    sha256 cellar: :any_skip_relocation, sequoia:      "b402766470676e263ab5afab110cd816b521d0c4f1f248c161fafb110f4c33ea"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.2.4", shell_output("#{bin}/easyhg --version")
  end
end
