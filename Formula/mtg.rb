class Mtg < Formula
  desc "Modern terminal games launcher (Breaker and more)"
  homepage "https://github.com/modern-terminal-games/mtg"
  url "https://github.com/modern-terminal-games/mtg/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "2a929141649aca73f074b5eb58e4302c0e53f578796c8bdc2cdcb610231ffb2c"
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
