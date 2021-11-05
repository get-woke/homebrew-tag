# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Woke < Formula
  desc "Detect non-inclusive language in your source code."
  homepage "https://getwoke.tech"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.16.0/woke-0.16.0-darwin-amd64.tar.gz"
      sha256 "843fcc284e569d09a1db77ed104bacac2e75b63bc3c4c0e4d3a4d56602b5b794"

      def install
        bin.install "woke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/get-woke/woke/releases/download/v0.16.0/woke-0.16.0-darwin-arm64.tar.gz"
      sha256 "0f238ef83b623ac8ed054953830272143c3ba3e2f64195aec841f9361376c932"

      def install
        bin.install "woke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/get-woke/woke/releases/download/v0.16.0/woke-0.16.0-linux-arm64.tar.gz"
      sha256 "220fa585c4591799e16e0a5cac4c0f434ee08359ec4d7450d604519fd166059f"

      def install
        bin.install "woke"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.16.0/woke-0.16.0-linux-amd64.tar.gz"
      sha256 "25c71891a8e5f19d1e41b77c64053d5447c2609afe632030ed236641f62d4a9b"

      def install
        bin.install "woke"
      end
    end
  end

  test do
    system "#{bin}/woke --version"
  end
end
