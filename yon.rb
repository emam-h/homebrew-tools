class Yon < Formula
  desc "YAML/JSON Converter, formatter and validator CLI"
  homepage "https://github.com/emam-h/yon"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-arm64"
    sha256 "026af80bdaeb534313f2d77da47c422ad8a55a537d9e5ea993bfe0e306fe0de2"

  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-darwin-amd64"
    sha256 "65a8dd2e7ace0ce4ed3ab74d805bf7aa3dbc948c718672957f06bf4cea7d951f"

  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-arm64"
    sha256 "9df504e0a32a5aaecaeb365963f0448f7f824f6264c6f3c3413c2538477d6885"

  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/emam-h/yon/releases/download/v0.1.0/yon-linux-amd64"
    sha256 "119468161da230af212e73959078d2a3b3a4788460bb12585f7421938cf46b41"
  end

  def install
    bin.install "yon"
  end

  test do
    system "#{bin}/yon", "--help"
  end
end