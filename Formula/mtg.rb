class Mtg < Formula
  desc "Modern terminal games launcher (Breaker, Paddle Battle, Snek, and more)"
  homepage "https://github.com/modern-terminal-games/mtg"
  url "https://github.com/modern-terminal-games/mtg/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "2267359c2e88cacd4888ba818f5f9023eddd1c05abea4d2981d841c3dcf777f2"
  license "MIT"
  head "https://github.com/modern-terminal-games/mtg.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/mtg")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mtg version")
  end
end
