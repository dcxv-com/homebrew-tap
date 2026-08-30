class Dcxv < Formula
  desc "Manage DCXV servers, orders and payments from the terminal"
  homepage "https://dcxv.com/cli"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.7.2/dcxv-macos-arm64"
      sha256 "a5359be8f79ddfde98cf4ab4fd91bf069dd1e8912a2a0342661be89e01313b75"

      def install
        bin.install "dcxv-macos-arm64" => "dcxv"
      end
    end
    on_intel do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.7.2/dcxv-macos-x64"
      sha256 "90a109af99d2933f7ba28db313e03c5dadb082acc82debb869999c35423adb1a"

      def install
        bin.install "dcxv-macos-x64" => "dcxv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcxv version")
  end
end
