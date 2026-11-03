class Mectl < Formula
  desc "MiddlEarth command-line client"
  homepage "https://github.com/janfonas/mectl-releases"
  version "0.10.11"

  on_macos do
    on_arm do
      url "https://github.com/janfonas/mectl-releases/releases/download/v0.10.11/mectl_0.10.11_darwin_arm64.tar.gz"
      sha256 "7b7a2e989959961318e80a7b772f348ae5be0feadfe0b9326c90ce35f9861ae0"
    end
    on_intel do
      url "https://github.com/janfonas/mectl-releases/releases/download/v0.10.11/mectl_0.10.11_darwin_amd64.tar.gz"
      sha256 "d21f232de8d93fa998f248ac6ef829a343b5d930013c27649cd1437725b26be3"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/janfonas/mectl-releases/releases/download/v0.10.11/mectl_0.10.11_linux_amd64.tar.gz"
      sha256 "a1a6bb462648f903f40beaf92637ccbd879602d0a012430ffa4481f525d3cfb3"
    end
  end

  def install
    supported = (OS.mac? && (Hardware::CPU.arm? || Hardware::CPU.intel?)) ||
                (OS.linux? && Hardware::CPU.intel?)
    odie "mectl supports macOS arm64/amd64 and Linux amd64 only" unless supported
    bin.install "mectl"
		doc.install "THIRD_PARTY_NOTICES.txt"
  end

  test do
    ENV["HOME"] = testpath.to_s
    ENV["XDG_CONFIG_HOME"] = (testpath/"config").to_s
    assert_equal "mectl version #{version}", shell_output("#{bin}/mectl version").lines.first.chomp
		assert_path_exists doc/"THIRD_PARTY_NOTICES.txt"
		refute_empty (doc/"THIRD_PARTY_NOTICES.txt").read
  end
end
