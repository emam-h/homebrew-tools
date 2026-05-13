class Yon < Formula
  desc "YAML/JSON Converter, formatter and validator CLI"
  homepage "https://github.com/emam-h/yon"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-arm64.tar.gz"
    sha256 "64d4df9dfd0b2c417453d9d40737c947c795625445bf8b8bcb46ca28c287e8b4"

  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-amd64.tar.gz"
    sha256 "4f0ae83d0a97843d895e27c9b4594026785424703b3d458f810ad192a3694e8c"

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-arm64.tar.gz"
    sha256 "cc7c495707644334ff6a460ce699b747e8db49140291b8eaaa709baa0c1453d9"

  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-amd64.tar.gz"
    sha256 "04ea62dce4ca96e24264ddd918e8c9546a121bc0a4e2223ba3dafe759ac845a6"

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