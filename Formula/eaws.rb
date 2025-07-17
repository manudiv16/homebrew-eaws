class Eaws < Formula
  desc "Simple AWS CLI tool for ECS, CloudWatch, and CodePipeline"
  homepage "https://github.com/manudiv16/eaws"
  version "0.2.0"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/manudiv16/eaws/releases/download/v0.2.0/eaws-darwin-arm64"
      sha256 "YOUR_ARM64_SHA256_HERE"
    else
      url "https://github.com/manudiv16/eaws/releases/download/v0.2.0/eaws-darwin-amd64"
      sha256 "YOUR_AMD64_SHA256_HERE"
    end
  elsif OS.linux?
    url "https://github.com/manudiv16/eaws/releases/download/v0.2.0/eaws-linux-amd64"
    sha256 "YOUR_LINUX_SHA256_HERE"
  end

  depends_on "aws-cli"

  def install
    bin.install Dir["eaws*"].first => "eaws"
  end

  test do
    system "#{bin}/eaws", "--version"
  end
end
