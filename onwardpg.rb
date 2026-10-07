# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.8/onwardpg_0.1.0-preview.8_darwin_amd64.tar.gz"
      sha256 "f54f334ff2657fcc2bb9cf2ed2896b11a2995f4edbef4ce8bfc225b608445ab5"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.8/onwardpg_0.1.0-preview.8_darwin_arm64.tar.gz"
      sha256 "6c7e914b265238351ad3b099890e3f5952d7eb2b661ab469708d58e11638038f"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.8/onwardpg_0.1.0-preview.8_linux_amd64.tar.gz"
      sha256 "3ab561a4fb03b757c41c7323b41641466cc80ce80ba255bbc7f34ca571e52f44"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.8/onwardpg_0.1.0-preview.8_linux_arm64.tar.gz"
      sha256 "8883584033d9e30a03a6eb14a6c4ea3b507d6fd12af06c08f743ea28475261c0"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.8"', shell_output("#{bin}/onwardpg version")
  end
end
