# This file was generated by GoReleaser. DO NOT EDIT.
class Woke < Formula
  desc "A text file analysis tool that detects non-inclusive language in your source code."
  homepage "https://getwoke.tech"
  version "0.1.15"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/get-woke/woke/releases/download/v0.1.15/woke-0.1.15-darwin-amd64.tar.gz"
    sha256 "071519999b7f871a4cf41d4adf5a425df76823edf29b6daf5426a5afa783a44f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.1.15/woke-0.1.15-linux-amd64.tar.gz"
      sha256 "ba6c51447001fb099aab94bdc80aba0fd8c4d5002db785721ac0e82c3551fc2c"
    end
  end

  def install
    bin.install "woke"
  end

  test do
    system "#{bin}/woke --version"
  end
end
