# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.4/onwardpg_0.1.0-preview.4_darwin_amd64.tar.gz"
      sha256 "ab9b831a92c71886b3c0f2f9ce33c9d9a3ee31cc335a80aa536fed01b1046edd"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.4/onwardpg_0.1.0-preview.4_darwin_arm64.tar.gz"
      sha256 "c1d937ac74c42f2d1f8a88f1228a67d6668806b49b933b440f69493659b519f2"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.4/onwardpg_0.1.0-preview.4_linux_amd64.tar.gz"
      sha256 "05c79e14209fa37252d65c48ffd490590b212d68280257e2c266e502893bb8fc"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.4/onwardpg_0.1.0-preview.4_linux_arm64.tar.gz"
      sha256 "d07ad9aa0f8052f835fe2052148b13fb21225872aebc519737c0de5446d1ac3e"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.4"', shell_output("#{bin}/onwardpg version")
  end
end
