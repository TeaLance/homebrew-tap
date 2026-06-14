cask "agentmeter" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000" # set by Scripts/release.sh output on first release

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
