class Tfoutdated < Formula
  desc "Detect outdated Terraform modules and providers with breaking change analysis"
  homepage "https://github.com/AnassKartit/tfoutdated"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/AnassKartit/tfoutdated/releases/download/v#{version}/tfoutdated_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
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
