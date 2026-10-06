# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.5/onwardpg_0.1.0-preview.5_darwin_amd64.tar.gz"
      sha256 "afeb39c7a9f58975bcdfa2781afa761f3afffcb905177bb864f17f76be1b5bf1"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.5/onwardpg_0.1.0-preview.5_darwin_arm64.tar.gz"
      sha256 "ce4300dc30435c4a4727cc679a0539092184f783d19ab9d5ba66885b487df141"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.5/onwardpg_0.1.0-preview.5_linux_amd64.tar.gz"
      sha256 "0919757acdc5d1908d8f149ece7670c9fe048b4e3f4f907f5055c725b4d79c5d"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.5/onwardpg_0.1.0-preview.5_linux_arm64.tar.gz"
      sha256 "241521dd27913f9556f9293e697975ca170c36266f1c9d17d6b1ac78e03000bc"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.5"', shell_output("#{bin}/onwardpg version")
  end
end
