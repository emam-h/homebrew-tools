class Yon < Formula
  desc "YAML/JSON Converter, formatter and validator CLI"
  homepage "https://github.com/emam-h/yon"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-arm64.tar.gz"
    sha256 "3c7f79f4fb188cb2205d21ca62bf428c599692f655946c2e5d13657db56e278d"

  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-amd64.tar.gz"
    sha256 "f0112667aeb34a4dc4402fc8a75b41833727d5169bb7593f56f2a52d92a6f662"

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-arm64.tar.gz"
    sha256 "8e1e20c3f89121a6f3eb430bf4c85452d472fbd5137548972f6fccd5677ae7b4"

  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-amd64.tar.gz"
    sha256 "239b3fc82a69989fb90ca581f39ad0d7390306a0f8ce649d38263f80d01c1696"

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