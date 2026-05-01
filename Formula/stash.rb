class Stash < Formula
  desc "TUI for bookmarking and resuming Claude Code and Codex sessions"
  homepage "https://github.com/jaredgizersky/stash"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jaredgizersky/stash/releases/download/v0.1.0/stash_0.1.0_darwin_arm64.tar.gz"
      sha256 "fd566c6462ae5bddae7c105b5839fa151a4095b4c7617884614c6f4bc0556bed"
    else
      url "https://github.com/jaredgizersky/stash/releases/download/v0.1.0/stash_0.1.0_darwin_amd64.tar.gz"
      sha256 "483c39eba52ad46468fc0ae62ac6fa0855002f337a843594a190078fe213413d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jaredgizersky/stash/releases/download/v0.1.0/stash_0.1.0_linux_arm64.tar.gz"
      sha256 "a90302f6019014773ba913aa3579299c596357783a356bbb92500c27ca34237f"
    else
      url "https://github.com/jaredgizersky/stash/releases/download/v0.1.0/stash_0.1.0_linux_amd64.tar.gz"
      sha256 "f0c24fb2b3b4a2be988abca302e822239db69c5bb7519af5196ab9b193ade3fd"
    end
  end

  def install
    bin.install "stash"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/stash --help")
  end
end
