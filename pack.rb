class Pack < Formula
  desc "A tool for viewing available scripts in a package.json"
  homepage "https://github.com/superhighfives/pack"
  url "https://github.com/superhighfives/pack/releases/download/v0.1.0/pack-0.1.0.tar.gz"
  sha256 "67b8168d4a1d9bd4d0c9551899603c5f54936d3197f9eff508b765b9cbee55f2"

  def install
    bin.install "pack"
  end
end
