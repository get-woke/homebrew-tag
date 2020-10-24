# This file was generated by GoReleaser. DO NOT EDIT.
class Woke < Formula
  desc "Detect non-inclusive language in your source code."
  homepage "https://getwoke.tech"
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/get-woke/woke/releases/download/v0.2.2/woke-0.2.2-darwin-amd64.tar.gz"
    sha256 "4d640e7d2475fefc365095178f97e658d5d57ed890adee102baf5870514dac2a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.2.2/woke-0.2.2-linux-amd64.tar.gz"
      sha256 "eeb5b81cd3cc0877741d4bb405bd4c9e82ee0b540c32f9c6d0df07c58b7ead2e"
    end
  end

  def install
    bin.install "woke"
  end

  test do
    system "#{bin}/woke --version"
  end
end
