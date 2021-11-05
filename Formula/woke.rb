# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Woke < Formula
  desc "Detect non-inclusive language in your source code."
  homepage "https://getwoke.tech"
  version "0.15.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/get-woke/woke/releases/download/v0.15.1/woke-0.15.1-darwin-arm64.tar.gz"
      sha256 "8235097e4dbf483987535411fc934092cf11bf1f7200e45250ca2143e3ab1802"

      def install
        bin.install "woke"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.15.1/woke-0.15.1-darwin-amd64.tar.gz"
      sha256 "a3a69507dfcc7e7dac324e17835fb3d2223e3019ba410a50fa9703ec5e09fb54"

      def install
        bin.install "woke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.15.1/woke-0.15.1-linux-amd64.tar.gz"
      sha256 "a28682035a9b9321d4081092f8a88630a7756e2a2d7a560cd96b85ad40bd0674"

      def install
        bin.install "woke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/get-woke/woke/releases/download/v0.15.1/woke-0.15.1-linux-arm64.tar.gz"
      sha256 "2a787b99455c7ee77b4bcf3c1d0d4c500e3fcb2d026dd2dd84fb6592992fb01a"

      def install
        bin.install "woke"
      end
    end
  end

  test do
    system "#{bin}/woke --version"
  end
end
