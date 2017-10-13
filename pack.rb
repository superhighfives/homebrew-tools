class Pack < Formula
  desc "A tool for viewing available scripts in a package.json"
  homepage "https://github.com/superhighfives/pack"
  url "https://github.com/superhighfives/pack/raw/0.0.1/pack-0.0.1.tar.gz"
  sha256 "3822f5e1363eb4533e0c4a36fbbac9817a78e753767d0714912975e79b40fd8a"

  bottle :unneeded

  def install
    bin.install "pack"
  end
end