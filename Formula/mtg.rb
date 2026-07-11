class Mtg < Formula
  desc "Modern terminal games launcher (Breaker, Paddle Battle, and more)"
  homepage "https://github.com/modern-terminal-games/mtg"
  url "https://github.com/modern-terminal-games/mtg/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "c1df6167fd08ab6d9782ebffe67fe815a03a4df6e779488ebcdc763e513e5b91"
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
