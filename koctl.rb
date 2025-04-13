# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Koctl < Formula
  desc "Opinionated Kong Konnect organization orchestration via declarative configuration"
  homepage "https://github.com/Kong/konnect-orchestrator"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.9.0/konnect-orchestrator_darwin_amd64.zip"
      sha256 "b447626b13ce867b5bf90236e0a2f5803af301dc3bacc4ab2f915e9db9b6df00"

      def install
        bin.install "koctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.9.0/konnect-orchestrator_darwin_arm64.zip"
      sha256 "3e1f9d147d65c2a40c0f53736fe115208e050460f733223ff073017c25dce87f"

      def install
        bin.install "koctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.9.0/konnect-orchestrator_linux_amd64.zip"
        sha256 "30472b013badd2a5e66856bf6bfc7fb69701716ba7fbaf2d8acfdc8e88d5490f"

        def install
          bin.install "koctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Kong/konnect-orchestrator/releases/download/v0.9.0/konnect-orchestrator_linux_arm64.zip"
        sha256 "8b8322510897dc11c46153257ddf855c7123579b4583b4fa350d5b4db9a1dc8f"

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
