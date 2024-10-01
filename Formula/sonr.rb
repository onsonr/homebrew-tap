# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sonr < Formula
  desc "Sonr is a decentralized, permissionless, and censorship-resistant identity network."
  homepage "https://sonr.io/"
  version "0.4.2"

  depends_on "ipfs"

  on_macos do
    on_intel do
      url "https://github.com/onsonr/sonr/releases/download/v0.4.2/sonr_0.4.2_darwin_amd64.tar.gz"
      sha256 "e57ff435e20c3e922744f44234a16cf143fef3f7546be36310a1c65b7a468405"

      def install
        bin.install "sonrd"
      end
    end
    on_arm do
      url "https://github.com/onsonr/sonr/releases/download/v0.4.2/sonr_0.4.2_darwin_arm64.tar.gz"
      sha256 "4f653e24a2da703526d03580616bec56564cb3db633ae8f4032307190603d937"

      def install
        bin.install "sonrd"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.4.2/sonr_0.4.2_linux_amd64.tar.gz"
        sha256 "a67ec1f283ec15297b460781a7d6b8e16f7de93e14869037470e8fd81873cdb9"

        def install
          bin.install "sonrd"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/onsonr/sonr/releases/download/v0.4.2/sonr_0.4.2_linux_arm64.tar.gz"
        sha256 "cc5922c19b5e2dec4e21b219188143b68b4e9bed07f5b4d13aef1874249a31de"

        def install
          bin.install "sonrd"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Run a local sonr node and access it with the motr proxy
    EOS
  end
end