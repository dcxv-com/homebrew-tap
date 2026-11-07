class Dcxv < Formula
  desc "Manage DCXV servers, orders and payments from the terminal"
  homepage "https://dcxv.com/cli"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.8.1/dcxv-macos-arm64"
      sha256 "514147300b64c173dd07a094cc5a59a6b95c8c934ad98a82b2052cbc17b581cc"

      def install
        bin.install "dcxv-macos-arm64" => "dcxv"
      end
    end
    on_intel do
      url "https://github.com/dcxv-com/dcxv-cli/releases/download/v0.8.1/dcxv-macos-x64"
      sha256 "88d84c5d1027972a525901f3668b7b3fea1230da455ad72a5e404e18725dd94c"

      def install
        bin.install "dcxv-macos-x64" => "dcxv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dcxv version")
  end
end
