class XmindCli < Formula
  desc "Agent-native CLI for inspecting and editing XMind workbooks"
  homepage "https://github.com/ivan-94/xmind-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ivan-94/xmind-cli/releases/download/v0.1.0/xmind-cli-aarch64-apple-darwin.tar.gz"
      sha256 "63f99d7d13c4fe30b59d0b3d9dc312c07e35518dd918999b125fa1bc6039ca56"
    end

    on_intel do
      url "https://github.com/ivan-94/xmind-cli/releases/download/v0.1.0/xmind-cli-x86_64-apple-darwin.tar.gz"
      sha256 "9c230cdbbd355a19eb549060c72394dfa10458d4fb2f0fe9e9b0ed03d4b402a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ivan-94/xmind-cli/releases/download/v0.1.0/xmind-cli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49a612eff6734ea5a72638b17eda699d69e59c9e736a7c40f448866b3e13049f"
    end

    on_intel do
      url "https://github.com/ivan-94/xmind-cli/releases/download/v0.1.0/xmind-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "474c911d2ce34d0cf4a711bdf131be08e47f5c28bc43fc81ac1879e9452f8993"
    end
  end

  def install
    bin.install "xmind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xmind --version")
  end
end
