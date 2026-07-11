class Mtg < Formula
  desc "Modern terminal games launcher (Breakout and more)"
  homepage "https://github.com/modern-terminal-games/mtg"
  url "https://github.com/modern-terminal-games/mtg/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dae0d2a75dec956e1ab9dc73ca288d74e14ca05cf64bcb22b28c4ed80e7aa5f1"
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
