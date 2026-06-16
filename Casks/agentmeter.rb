cask "agentmeter" do
  version "0.1.0"
  sha256 "41fcdc603f8119f6e50eec643aa7bfc56f447e0dd6e35d0e2208d1c1029d3ea1"

  url "https://github.com/TeaLance/AgentMeter/releases/download/v#{version}/AgentMeter-#{version}.zip"
  name "AgentMeter"
  desc "Menu-bar usage meter for Claude Code and OpenAI Codex"
  homepage "https://github.com/TeaLance/AgentMeter"

  depends_on macos: ">= :sonoma"

  app "AgentMeter.app"

  zap trash: [
    "~/.claude/agentmeter-status.json",
    "~/Library/Preferences/com.agentmeter.app.plist",
  ]
end
