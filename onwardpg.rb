# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.7/onwardpg_0.1.0-preview.7_darwin_amd64.tar.gz"
      sha256 "d1afca5a72dbf504666c65bc41fc6863b2faf4a2483fcea0e44a5f7513c572db"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.7/onwardpg_0.1.0-preview.7_darwin_arm64.tar.gz"
      sha256 "c44a286327514ba88f564d315d80a3e662fb36938a1a87e76d3b20b60b2e235a"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.7/onwardpg_0.1.0-preview.7_linux_amd64.tar.gz"
      sha256 "225d86569821560584bb98689a5221433225a21c6220865de8f7fbd1087f5eaf"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.7/onwardpg_0.1.0-preview.7_linux_arm64.tar.gz"
      sha256 "6267ee088f2b28cd9c183627d116d43b5fd63e8f8d9af6adcdfbdd22786889aa"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.7"', shell_output("#{bin}/onwardpg version")
  end
end
