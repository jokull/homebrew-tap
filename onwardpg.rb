# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.12/onwardpg_0.1.0-preview.12_darwin_amd64.tar.gz"
      sha256 "fb14e850557f73197ae1f240a13207eed914454a76e4b901c2a17dcb7192c522"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.12/onwardpg_0.1.0-preview.12_darwin_arm64.tar.gz"
      sha256 "36c2972b85f0e6fd8614c59b42a88a4653f0047a0a987ff9330aa60f4a05113a"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.12/onwardpg_0.1.0-preview.12_linux_amd64.tar.gz"
      sha256 "87139a8780173ea8b9442b2ba585216d1d7178a6d043abb9841f4e6f7980d9db"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.12/onwardpg_0.1.0-preview.12_linux_arm64.tar.gz"
      sha256 "ecfd78bf4f432a29b51d30f8c42b32bda63ed6d4ee6fb00386a1c78b944a7304"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.12"', shell_output("#{bin}/onwardpg version")
  end
end
