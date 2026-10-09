class Symbia < Formula
  desc "Signed, hash-chained SQLite ledger of AI agent work, served over MCP"
  homepage "https://github.com/Symbia-Labs/symbia"
  url "https://github.com/Symbia-Labs/symbia/releases/download/v0.1.0/symbia-0.1.0-aarch64-apple-darwin.zip"
  sha256 "6c01e02da454acf392e5d13e3342983b9e10704780f284209b080c32e2d42f2f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "symbia"
  end

  test do
    assert_match "symbia 0.1.0", shell_output("#{bin}/symbia --version")
  end
end
