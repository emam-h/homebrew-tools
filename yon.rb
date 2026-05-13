class Yon < Formula
  desc "YAML/JSON Converter, formatter and validator CLI"
  homepage "https://github.com/emam-h/yon"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-arm64.tar.gz"
    sha256 "008889a9a14e6997e3cb91b1c14531cf6258107daca88b14bb2bb98e282691cc"

  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-amd64.tar.gz"
    sha256 "294c74c3a3aef4aa933ba0fe491d69364dfec5d1b1f75f753944c1e13f43a85a"

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-arm64.tar.gz"
    sha256 "d8a935f3f34378f590c192dca25c120bec67e564a8b036c03e546742b8bed6c6"

  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-amd64.tar.gz"
    sha256 "70d6f63d90efe6dc297b5c35b4cf769e65a098411212951ddcbcdcfd6fb769bf"

  else
    odie "Unsupported platform"
  end

  def install
    bin.install "yon"
  end

  test do
    system "#{bin}/yon", "--help"
  end
end