# typed: strict
# frozen_string_literal: true

# This file is generated from onwardpg release checksums. DO NOT EDIT.
class Onwardpg < Formula
  desc "Forward-only PostgreSQL schema-diff and migration planner"
  homepage "https://github.com/jokull/onwardpg"
  version "0.1.0-preview.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.14/onwardpg_0.1.0-preview.14_darwin_amd64.tar.gz"
      sha256 "9b764f84ff196379dac6d01acb29738bca7f246b1fbb5d1c210c020df49564b3"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.14/onwardpg_0.1.0-preview.14_darwin_arm64.tar.gz"
      sha256 "82f2c554a50edd0dc139d38acd052c767eb55c3cbc1a854e6c6498fc3289ac0b"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.14/onwardpg_0.1.0-preview.14_linux_amd64.tar.gz"
      sha256 "149cf168ddd803f03298586b6af2e7ef8551ad1e26e9ef0da6fd587fdc737805"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jokull/onwardpg/releases/download/v0.1.0-preview.14/onwardpg_0.1.0-preview.14_linux_arm64.tar.gz"
      sha256 "7c279f5f778b35d6f1887af1d958f52ee467d61323c767510c20b72cc9a4256e"
      define_method(:install) do
        bin.install "onwardpg"
      end
    end
  end

  test do
    assert_match '"version":"v0.1.0-preview.14"', shell_output("#{bin}/onwardpg version")
  end
end
