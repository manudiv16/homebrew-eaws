class Eaws < Formula
  desc "Simple AWS CLI tool for ECS, CloudWatch, and CodePipeline"
  homepage "https://github.com/manudiv16/eaws"
  version "0.3.2"
  
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/manudiv16/eaws/releases/download/v0.3.2/eaws-darwin-arm64"
      sha256 "e4ca0519511859f6acd317c5ac73741bf576fd6d580e32340583ce8a58494fc6"
    else
      url "https://github.com/manudiv16/eaws/releases/download/v0.3.2/eaws-darwin-amd64"
      sha256 "c6d54584211a942374235ca04aa15880db24e56e821abb367a50df5d5d2ade2a"
    end
  elsif OS.linux?
    url "https://github.com/manudiv16/eaws/releases/download/v0.3.2/eaws-linux-amd64"
    sha256 "2c03c5a2f311b415428a80bc7a3e1cde937178010c121b3af072e78874aae172"
  end

  depends_on "awscli"

  def install
    bin.install Dir["eaws*"].first => "eaws"
  end

  test do
    system "#{bin}/eaws", "--version"
  end
end
