class Mtg < Formula
  desc "Modern terminal games launcher (Breaker, Paddle Battle, and more)"
  homepage "https://github.com/modern-terminal-games/mtg"
  url "https://github.com/modern-terminal-games/mtg/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e1b190833c3d35cef50f7c539225f1555a41140f7f995da18490b2e839125d4e"
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
