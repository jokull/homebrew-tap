# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.3/onwardpg_0.1.0-preview.3_darwin_amd64.tar.gz"
      sha256 "6c473c40c9d1b3dc30b8f64727d5243687539dd2042ce310b5fce284690b5f75"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.3/onwardpg_0.1.0-preview.3_darwin_arm64.tar.gz"
      sha256 "277823a2a21ceb55ea3adfa0f95fac9c9f5a308d3021b471a82bf93d17994a94"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.3/onwardpg_0.1.0-preview.3_linux_amd64.tar.gz"
      sha256 "057c05cb9358e6b4d406f723666c6013bf6e44e4a231e25bf92941bf7bccb907"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.3/onwardpg_0.1.0-preview.3_linux_arm64.tar.gz"
      sha256 "354dedccc0a499cb3c02315ccfb30876d73fcc72b42bc611a177bee5ace94a6f"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.3"', shell_output("#{bin}/onwardpg version")
  end
end
