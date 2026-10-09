cask "symbia" do
  version "0.1.0"
  sha256 "6c01e02da454acf392e5d13e3342983b9e10704780f284209b080c32e2d42f2f"

  url "https://github.com/Symbia-Labs/symbia/releases/download/v#{version}/symbia-#{version}-aarch64-apple-darwin.zip"
  name "Symbia"
  desc "Signed, hash-chained SQLite ledger of AI agent work, served over MCP"
  homepage "https://github.com/Symbia-Labs/symbia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  binary "symbia-#{version}-aarch64-apple-darwin/symbia"
end
