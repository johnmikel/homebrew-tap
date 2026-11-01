class Reap < Formula
  desc "Clear finished git worktrees and build caches, with APFS clone-aware sizes"
  homepage "https://github.com/johnmikel/reap"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/johnmikel/reap/releases/download/v0.1.0/reap-v0.1.0-macos-universal.tar.gz"
    sha256 "5dcf4529cac9bf554d3cc12dda1c89fde377535c7f4b4988b8bbce75818837bb"
  end

  on_linux do
    on_intel do
      url "https://github.com/johnmikel/reap/releases/download/v0.1.0/reap-v0.1.0-linux-x86_64.tar.gz"
      sha256 "36fce055ebfbbf87c5d5116a19ce5aba29451dcfcb5f71cfd8754fcfa0f7daa8"
    end
  end

  def install
    bin.install "reap"
  end

  test do
    assert_match "reap #{version}", shell_output("#{bin}/reap --version")
  end
end
