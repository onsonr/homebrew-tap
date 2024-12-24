# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sonr < Formula
  desc "Sonr is a decentralized, permissionless, and censorship-resistant identity network."
  homepage "https://onsonr.dev"
  version "0.6.0"

  depends_on "ipfs"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/onsonr/sonr/releases/download/v0.6.0/sonr_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "248a51878d9655e2fd5c6d638e7c300bdfbad98c1520f2e52c796c71beacc0ae"

      def install
        bin.install "sonrd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/onsonr/sonr/releases/download/v0.6.0/sonr_0.6.0_Darwin_arm64.tar.gz"
      sha256 "77fa142bbd067550d9d6820b390c560bc586c54de71b670a87b88b26e2a82d81"

      def install
        bin.install "sonrd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.6.0/sonr_0.6.0_Linux_x86_64.tar.gz"
        sha256 "42a22e96faed6dcb5a2cdfbb11652b35760c71e383418e5f40127431edb3221d"

        def install
          bin.install "sonrd"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.6.0/sonr_0.6.0_Linux_arm64.tar.gz"
        sha256 "8a7877abed8f6a7ea7473dc79314e2e6571d68f250c1d39e9c8004d967c27126"

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
