class RunxLauncher < Formula
  desc "Run any project with the exact runtime versions it declares"
  homepage "https://github.com/aryankahar31/runx"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aryankahar31/runx/releases/download/v#{version}/runx-macos-arm64.tar.gz"
      sha256 "88434e1789373d1b83a2ee557c93edb1c367a093205907c9be983da8394f169c"
    else
      url "https://github.com/aryankahar31/runx/releases/download/v#{version}/runx-macos-x64.tar.gz"
      sha256 "28a3f804408c47fbcd1ad67ad8d144da27da9cf84ce4852d300fecbfa58f1152"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aryankahar31/runx/releases/download/v#{version}/runx-linux-arm64.tar.gz"
      sha256 "d4bab13c360ac0ccd2fbbe50f9d5b089700f5175ce0971ffab7faf768762d7a4"
    else
      url "https://github.com/aryankahar31/runx/releases/download/v#{version}/runx-linux-x64.tar.gz"
      sha256 "ff9a6dcd8287ce588ec575854e4b22c65e518cdb153bd65b4c056aa8b8635c15"
    end
  end

  def install
    bin.install "runx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/runx --version")
  end
end
