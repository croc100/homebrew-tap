class Litescope < Formula
  desc "SQLite production operations — diff, validate, backup check, schema drift monitoring"
  homepage "https://github.com/croc100/Litescope"
  version "0.1.0"
  license "Elastic-2.0"

  on_macos do
    on_arm do
      url "https://github.com/croc100/Litescope/releases/download/v0.1.0/litescope_0.1.0_darwin_arm64.tar.gz"
      sha256 "6f3b2b1a554b2006b02ed349f98b3597869cc5e89ad262709cdcc93b264ade1b"
    end
    on_intel do
      url "https://github.com/croc100/Litescope/releases/download/v0.1.0/litescope_0.1.0_darwin_amd64.tar.gz"
      sha256 "d41951a857fd444a9e35cbd0f8c250cd817c7f7b2226f747cad528d4700e4007"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/croc100/Litescope/releases/download/v0.1.0/litescope_0.1.0_linux_arm64.tar.gz"
      sha256 "f1068c23869e25b20f98e35c81a4f6db11dc29608848388423d2a28e24f28862"
    end
    on_intel do
      url "https://github.com/croc100/Litescope/releases/download/v0.1.0/litescope_0.1.0_linux_amd64.tar.gz"
      sha256 "2cf50f3608f948e920d399113cecf157de83061232de9c6a5a01dc6a0dae0b4f"
    end
  end

  def install
    bin.install "litescope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/litescope --version")
  end
end
