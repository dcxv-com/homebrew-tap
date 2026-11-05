class Dcxv < Formula
  desc "Manage DCXV servers, orders and payments from the terminal"
  homepage "https://dcxv.com/cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.8.0/dcxv-macos-arm64"
      sha256 "da7e96c1067f8d0388c148ac0436937288bc364a865f0ef814bcd29131b2e0dd"

      def install
        bin.install "dcxv-macos-arm64" => "dcxv"
      end
    end
    on_intel do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.8.0/dcxv-macos-x64"
      sha256 "50cdda58d1fb87e8f6892d1d74fc0620b4d88b85adf6568aec977c6deb666609"

      def install
        bin.install "dcxv-macos-x64" => "dcxv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcxv version")
  end
end
