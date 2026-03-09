class Tfoutdated < Formula
  desc "Detect outdated Terraform modules and providers with breaking change analysis"
  homepage "https://github.com/AnassKartit/tfoutdated"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_darwin_arm64.tar.gz"
      sha256 "ff3c4665f3bf9c6de422bde812a9e901df87d4fa1d3997e716333a2e58b2e65b"
    else
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_darwin_amd64.tar.gz"
      sha256 "b155208d56cfe14bb049aee5b851360686dc53b4978d4ed913159692531c45b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_linux_arm64.tar.gz"
      sha256 "cf619041b4870f74470ce65cc8cb43b45ee1ff5f4608e0fbe04e493ae55d72db"
    else
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_linux_amd64.tar.gz"
      sha256 "29c5c90e76a103bdf9e7669abdd8dccc19c09f050795bac28fc90f2006b30bf9"
    end
  end

  def install
    bin.install "tfoutdated"
    bin.install "tfoutdated-mcp" if File.exist?("tfoutdated-mcp")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tfoutdated version")
  end
end
