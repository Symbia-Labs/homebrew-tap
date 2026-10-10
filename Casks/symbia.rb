cask "symbia" do
  version "0.1.1"
  sha256 "eda3b946559f9b775ab6b75f09603e82f8322d56f72efda7b04f2eddae29863f"

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
