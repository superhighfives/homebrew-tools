class Pack < Formula
  desc "A tool for viewing available scripts in a package.json"
  homepage "https://github.com/superhighfives/pack"
  url "https://github.com/superhighfives/pack/releases/download/v0.1.1/pack-0.1.1.tar.gz"
  sha256 "ac3071b55a511d018c61d3ea23488870165d3a960d9009465cf8dad3ae137693"

  def install
    bin.install "pack"
  end
end
