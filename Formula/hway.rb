# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hway < Formula
  desc "Motr is a proxy for interacting with the Sonr network."
  homepage "https://sonr.io/"
  version "0.5.8"

  depends_on "ipfs"

  on_macos do
    on_intel do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.8/hway_0.5.8_darwin_amd64.tar.gz"
      sha256 "7d272ae4d085bb2c8f99b371abe8334be9449458d3af9e674c40186dbd5b46a0"

      def install
        bin.install "hway"
      end
    end
    on_arm do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.8/hway_0.5.8_darwin_arm64.tar.gz"
      sha256 "716ce2612c35c496a82b144918c191df677f36b6b3c92fc100d9d234da1d4866"

      def install
        bin.install "hway"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.8/hway_0.5.8_linux_amd64.tar.gz"
        sha256 "95c702936c520d6e2ed1c5d6b0bb75398ff5bd9b13089afd699460701288246b"

        def install
          bin.install "hway"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.8/hway_0.5.8_linux_arm64.tar.gz"
        sha256 "7cd142a4f2a0c14a3b52839b36882f5940f7c789b840df0e7e2c147ae6bca81a"

        def install
          bin.install "hway"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Use hway to interact with the Sonr network
    EOS
  end
end
