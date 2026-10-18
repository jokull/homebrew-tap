# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.13/onwardpg_0.1.0-preview.13_darwin_amd64.tar.gz"
      sha256 "b7e3ebc5bb05a26fa004846e6bf9363c454e0ec4109cea8cccc6e5bb958ecbcf"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.13/onwardpg_0.1.0-preview.13_darwin_arm64.tar.gz"
      sha256 "72353d933c687934d1fe909c68167f772ba364c8bb336ae43267e55a9d1a54fa"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.13/onwardpg_0.1.0-preview.13_linux_amd64.tar.gz"
      sha256 "7074eaebffb2f60cab81a9ec042c59aae76b5e33c6db18d53a98a651961f4181"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.13/onwardpg_0.1.0-preview.13_linux_arm64.tar.gz"
      sha256 "2e1c841e10848599f6194e74fe55c39d64a7d72e6b1f3c7f5ee814b31396f45b"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.13"', shell_output("#{bin}/onwardpg version")
  end
end
