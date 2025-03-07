# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Koctl < Formula
  desc "Opinionated Kong Konnect organization orchestration via declarative configuration"
  homepage "https://github.com/kong/konnect-orchestrator"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.3.0/konnect-orchestrator_darwin_amd64.zip"
      sha256 "0a40f01aca37756b593a5b3b33d369b60925274503a175f7497b099d1b57293a"

      def install
        bin.install "koctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.3.0/konnect-orchestrator_darwin_arm64.zip"
      sha256 "2e5991bae9d0841ba3813dc4d9e1507b3e4a8126bc55bbc8a2ba2067ebe151b0"

      def install
        bin.install "koctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.3.0/konnect-orchestrator_linux_amd64.zip"
        sha256 "2086e620bae24987a10112ac1fe799bb8ae210b5962b880640d7fa919a6a4f31"

        def install
          bin.install "koctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.3.0/konnect-orchestrator_linux_arm64.zip"
        sha256 "21e09f59b27d139fe18cec0514ef123035d726e9ed89bf8433f0fce1b912ad98"

        def install
          bin.install "koctl"
        end
      end
    end
  end

  test do
    system "#{bin}/koctl", "version"
  end
end
