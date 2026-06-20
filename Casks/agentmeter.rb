cask "agentmeter" do
  version "0.2.0"
  sha256 "fd4cc7a78984c1875039e4bd784878bdc1e894817ef990eaaa8dc8f9365bfffd"

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
