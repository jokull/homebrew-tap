# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.10/onwardpg_0.1.0-preview.10_darwin_amd64.tar.gz"
      sha256 "a3e171c735c960791b67d02bc5ef9ebe6af98fecdb9f2d9090d3bbd4421ca643"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.10/onwardpg_0.1.0-preview.10_darwin_arm64.tar.gz"
      sha256 "1a5758f9d6c6739e7d216e92c7ea73753089f22935144f375da175e7821e8c80"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.10/onwardpg_0.1.0-preview.10_linux_amd64.tar.gz"
      sha256 "196f08a249341bdb150c8bb8a566c49d2fac30bf715ff208bdd74571e08aedf8"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.10/onwardpg_0.1.0-preview.10_linux_arm64.tar.gz"
      sha256 "8b2cd8f2d838ef3753aeb642eadd2d26978499664a486369a369300b6e1c0ba4"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.10"', shell_output("#{bin}/onwardpg version")
  end
end
