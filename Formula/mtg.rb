class Mtg < Formula
  desc "Modern terminal games launcher (Brick Breaker and more)"
  homepage "https://github.com/modern-terminal-games/mtg"
  url "https://github.com/modern-terminal-games/mtg/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2894724e58e52e74c4dd9e941135b34f53a86bfb5d6137749794306fdc4e7ba7"
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
