cask "agentmeter" do
  version "0.2.1"
  sha256 "21ceb8a86e3d9ef00f4fdcfe35dd4854d776986b5a92f2689824a1c2e7b966a0"

  url "https://github.com/TeaLance/AgentMeter/releases/download/v#{version}/AgentMeter-#{version}.zip"
  name "AgentMeter"
  desc "Menu-bar usage meter for Claude Code and OpenAI Codex"
  homepage "https://github.com/TeaLance/AgentMeter"

  # Keep the ">=" string form: a bare `:sonoma` means EXACTLY Sonoma and would
  # block Sequoia/macOS 26+. The deprecation warning is a known Homebrew quirk.
  depends_on macos: ">= :sonoma"

  app "AgentMeter.app"

  zap trash: [
    "~/.claude/agentmeter-status.json",
    "~/Library/Preferences/com.agentmeter.app.plist",
  ]
end
