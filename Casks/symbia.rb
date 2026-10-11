cask "symbia" do
  version "0.2.20261011174853"
  sha256 "775826305cb853d85d721dbd2076d3d3c52319e5c69bde9fe2f30ac29ccb5175"

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
