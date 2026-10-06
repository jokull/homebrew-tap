# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.6/onwardpg_0.1.0-preview.6_darwin_amd64.tar.gz"
      sha256 "e67a2287ed4b1bf81f9d070d2dc98b4375a3ae1b047b2e11919883abef80490e"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.6/onwardpg_0.1.0-preview.6_darwin_arm64.tar.gz"
      sha256 "4f5a92629f5c627fef419c988f016f91a8c892a3505de23e0a3313d1af2dc771"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.6/onwardpg_0.1.0-preview.6_linux_amd64.tar.gz"
      sha256 "e66e3ea135fafea57a4d37b15acac44b8316e71377b474cc80997777c7669683"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.6/onwardpg_0.1.0-preview.6_linux_arm64.tar.gz"
      sha256 "92cff1280f83d8cae482f612546ad842c64490afe023b77be09f820a49aba2d5"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.6"', shell_output("#{bin}/onwardpg version")
  end
end
