class Symbia < Formula
  desc "Signed, hash-chained SQLite ledger of AI agent work, served over MCP"
  homepage "https://www.symbia-labs.com/symbia/"
  url "https://github.com/Symbia-Labs/symbia/releases/download/v0.1.0/symbia-0.1.0-aarch64-apple-darwin.zip"
  sha256 "fd6d81741738ac6f4f22c5d893e704171dbc6196ac2314ae341247dd3eee9c48"
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
