# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sonr < Formula
  desc "Sonr is a decentralized, permissionless, and censorship-resistant identity network."
  homepage "https://sonr.io/"
  version "0.5.8"

  depends_on "ipfs"

  on_macos do
    on_intel do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.8/sonr_0.5.8_darwin_amd64.tar.gz"
      sha256 "6e92f4433a9fdc443004772f0599881420f5be35bc86371750fd320220be3129"

      def install
        bin.install "sonrd"
      end
    end
    on_arm do
      url "https://github.com/onsonr/sonr/releases/download/v0.5.8/sonr_0.5.8_darwin_arm64.tar.gz"
      sha256 "87e279433248d45a813ea647600ad641a09677ca053fc6eef381d2f60f8b0011"

      def install
        bin.install "sonrd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.8/sonr_0.5.8_linux_amd64.tar.gz"
        sha256 "84cea8447dc4ad04611c5c38e0e24d2a810726e5f97dded2e931bc48f4c59ec8"

        def install
          bin.install "sonrd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.5.8/sonr_0.5.8_linux_arm64.tar.gz"
        sha256 "414a576ab64f3eefd3c671c24a540542fd985588e8a735fd769a7178ff57ac61"

        def install
          bin.install "sonrd"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run a local sonr node and access it with the hway proxy
    EOS
  end
end
