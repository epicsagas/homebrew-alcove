class Alcove < Formula
  desc "A quiet place for your project docs — MCP server for AI agent access to private documentation"
  homepage "https://github.com/epicsagas/alcove"
  version "0.7.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-aarch64-apple-darwin.tar.gz"
      sha256 "e3ee85e410b93f20697c17ef433df5512078f569dd819f49dc1a0db696a6243e"
    end

    on_intel do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-x86_64-apple-darwin.tar.gz"
      sha256 "4cd1c3f4b0a10dc352d47c4e5952e12e9a5a1e73cbf5208a69cce2849c8a617a"
    end
  end

  def install
    bin.install "alcove"
  end

  test do
    system "#{bin}/alcove", "--version"
  end
end
