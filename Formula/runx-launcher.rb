class RunxLauncher < Formula
  desc "Run any project with the exact runtime versions it declares"
  homepage "https://github.com/aryankahar31/runx"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aryankahar31/runx/releases/download/v0.7.2/runx-macos-arm64.tar.gz"
      sha256 "e93cf7f3af725b693f1559dbf3f75d938ece330aab9892ee3d3ece9c563bdce3"
    else
      url "https://github.com/aryankahar31/runx/releases/download/v0.7.2/runx-macos-x64.tar.gz"
      sha256 "921ee609805e98df9795b8bd743155ec93a9a4cd6cd8d2777a69442047bea0d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aryankahar31/runx/releases/download/v0.7.2/runx-linux-arm64.tar.gz"
      sha256 "2df9710ce5125faec2f5684a5733a5d52c6c04a280cb0874b25c3d9a304c7ec3"
    else
      url "https://github.com/aryankahar31/runx/releases/download/v0.7.2/runx-linux-x64.tar.gz"
      sha256 "866482d1a2ad46db9d57f8c3aed7d5e98d685d9dfba655613847612f39ee65d3"
    end
  end

  def install
    bin.install "runx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runx --version")
  end
end
