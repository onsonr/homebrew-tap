# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hway < Formula
  desc "Sonr is a decentralized, permissionless, and censorship-resistant identity network."
  homepage "https://onsonr.dev"
  version "0.6.2"

  depends_on "ipfs"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/onsonr/sonr/releases/download/v0.6.2/hway_0.6.2_Darwin_x86_64.tar.gz"
      sha256 "27b4b2dbba75432ef2a01535ec44840b192d158b8733dcc4fa5ce91631075a36"

      def install
        bin.install "hway"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/onsonr/sonr/releases/download/v0.6.2/hway_0.6.2_Darwin_arm64.tar.gz"
      sha256 "b33a8b6aa09437dd5e4e0ff05f336634766a9751350e0c9a26346367e9c2c34d"

      def install
        bin.install "hway"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.6.2/hway_0.6.2_Linux_x86_64.tar.gz"
        sha256 "7e9cee45118ab0f8e058e5d9b1d70ff8346c433890dd24e3695fbda4cb9b3b8f"

        def install
          bin.install "hway"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.6.2/hway_0.6.2_Linux_arm64.tar.gz"
        sha256 "10e5ca87aae5497eebf49ecaada8ba30affe20192fcbe2fe7f4314c81f99ca90"

        def install
          bin.install "hway"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run a local hway node and access it with the hway proxy
    EOS
  end
end
