# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.1/onwardpg_0.1.0-preview.1_darwin_amd64.tar.gz"
      sha256 "a8d5832bdc91d4f3fb5e978900675071cc18b4e79e7c628c85c103d7a9900175"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.1/onwardpg_0.1.0-preview.1_darwin_arm64.tar.gz"
      sha256 "8782612d14bf8f47d66459aacb8a919ac5f8b6284a3a2d71b26bbcf61fdb14b1"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.1/onwardpg_0.1.0-preview.1_linux_amd64.tar.gz"
      sha256 "2ae3cddfbb0a909e1007aaa94ae854d4e7ac834d29c2867671aaf1622a18b41f"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.1/onwardpg_0.1.0-preview.1_linux_arm64.tar.gz"
      sha256 "e49ad1e16577fa4c798d15ee0325ecd838e2ba10ed3a20384a1f8847534607ce"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.1"', shell_output("#{bin}/onwardpg version")
  end
end
