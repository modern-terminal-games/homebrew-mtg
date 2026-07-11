class Mtg < Formula
  desc "Modern terminal games launcher (Breaker, Paddle Battle, Snek, Alien Raid, and more)"
  homepage "https://github.com/modern-terminal-games/mtg"
  url "https://github.com/modern-terminal-games/mtg/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "f502ff68f9c9f539bcd550e85ee8dd97632378296501e05c013236685a42865f"
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
