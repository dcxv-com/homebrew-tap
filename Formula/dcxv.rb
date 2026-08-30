class Dcxv < Formula
  desc "Manage DCXV servers, orders and payments from the terminal"
  homepage "https://dcxv.com/cli"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.7.3/dcxv-macos-arm64"
      sha256 "351d4114371d95a158bb9333d82933590a1cdb241dd58b613bbc05d3d76834d0"

      def install
        bin.install "dcxv-macos-arm64" => "dcxv"
      end
    end
    on_intel do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.7.3/dcxv-macos-x64"
      sha256 "2c185a0037e8a891d03cf001d336e3fcc4854aa04e6cfd1d4a47c569cbb497e1"

      def install
        bin.install "dcxv-macos-x64" => "dcxv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcxv version")
  end
end
