# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.15/onwardpg_0.1.0-preview.15_darwin_amd64.tar.gz"
      sha256 "c11ee8d2d2f1ca3cdaa85ea751942eecbcfdbcb199b5dfda854a23261b798621"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.15/onwardpg_0.1.0-preview.15_darwin_arm64.tar.gz"
      sha256 "fa6ddb3af324b6ba8d95569230aff7e98d755b5d4595b56fc5d1684f18bb6830"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.15/onwardpg_0.1.0-preview.15_linux_amd64.tar.gz"
      sha256 "1bafc49b8d11e5bba42a4a297ed71b3742b457ac48c7bf244acd7bc8517143b6"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.15/onwardpg_0.1.0-preview.15_linux_arm64.tar.gz"
      sha256 "5b86a009b75dd18d78c78ee48e5bac2a324bdec7e2489206aa32409a770f0819"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.15"', shell_output("#{bin}/onwardpg version")
  end
end
