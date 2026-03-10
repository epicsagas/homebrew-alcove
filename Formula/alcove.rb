class Alcove < Formula
  desc "A quiet place for your project docs — MCP server for AI agent access to private documentation"
  homepage "https://github.com/epicsagas/alcove"
  version "0.7.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-aarch64-apple-darwin.tar.gz"
      sha256 "9412bd3f1265b5dc8f179e412782fc2e5123afec121bf94c32ffeab7154fb0b1"
    end

    on_intel do
      url "https://github.com/epicsagas/alcove/releases/download/v#{version}/alcove-x86_64-apple-darwin.tar.gz"
      sha256 "4a741e5348312952bc3331de0eab19d14dd5c719bd708a713948d23ce3dba276"
    end
  end

  def install
    bin.install "alcove"
  end

  test do
    system "#{bin}/alcove", "--version"
  end
end
