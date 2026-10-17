# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.11/onwardpg_0.1.0-preview.11_darwin_amd64.tar.gz"
      sha256 "47ca5791a9b682a16e54ddeaf32d6353d01c9cf08bcf04033b06a88ef70b4d92"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.11/onwardpg_0.1.0-preview.11_darwin_arm64.tar.gz"
      sha256 "157eef8be433039b762781e13205832c4ce4e5912d0f25602819a3413d6bebc3"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.11/onwardpg_0.1.0-preview.11_linux_amd64.tar.gz"
      sha256 "4c500bf701d4c373c5398168ab92eb4f80f759b29d2c5b40554924fe2c27ffd6"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.11/onwardpg_0.1.0-preview.11_linux_arm64.tar.gz"
      sha256 "259e05d7f1dcae2ce9d104ecf40a23f3c70c59261597dc7ae2438a5633dcb252"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.11"', shell_output("#{bin}/onwardpg version")
  end
end
