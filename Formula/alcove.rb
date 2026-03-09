class Alcove < Formula
  desc "A quiet place for your project docs — MCP server for AI agent access to private documentation"
  homepage "https://github.com/epicsagas/alcove"
  version "0.7.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-aarch64-apple-darwin.tar.gz"
      sha256 "6a11c101f8c0a96d282daab26c4582eb538acd87a2712f19632a5cad51f0a263"
    end

    on_intel do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-x86_64-apple-darwin.tar.gz"
      sha256 "cd3f3252444944486b1a90ef99b264ff09d41aef1e956f1711138a4b5bfd52db"
    end
  end

  def install
    bin.install "alcove"
  end

  test do
    system "#{bin}/alcove", "--version"
  end
end
