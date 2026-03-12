class Alcove < Formula
  desc "A quiet place for your project docs — MCP server for AI agent access to private documentation"
  homepage "https://github.com/epicsagas/alcove"
  version "0.7.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-aarch64-apple-darwin.tar.gz"
      sha256 "0b2d89ed2c0d719743769441c7f78a0b416920f4d4ea72321f18d4945490381b"
    end

    on_intel do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-x86_64-apple-darwin.tar.gz"
      sha256 "ff51f9ff4d20f9bce9ee05b6e7074e47caed506011ad3d210686404ba18fc258"
    end
  end

  def install
    bin.install "alcove"
  end

  test do
    system "#{bin}/alcove", "--version"
  end
end
