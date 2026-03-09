class Alcove < Formula
  desc "A quiet place for your project docs — MCP server for AI agent access to private documentation"
  homepage "https://github.com/epicsagas/alcove"
  version "0.7.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-aarch64-apple-darwin.tar.gz"
      sha256 "a95a3915c054b6a49e016bca04148a0c41c22bb8ece86679006d66b366b0ff06"
    end

    on_intel do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-x86_64-apple-darwin.tar.gz"
      sha256 "48803cc18a6551f15ba29c0a04ebf1b386343a3929b3f28cc30c28f23e95a9ee"
    end
  end

  def install
    bin.install "alcove"
  end

  test do
    system "#{bin}/alcove", "--version"
  end
end
