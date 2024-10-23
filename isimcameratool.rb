class Isimcameratool < Formula
  desc "IPhoneシミュレーターにMacのカメラを表示させるためのMacアプリです"
  homepage "https://github.com/akidon0000/isimcameratool"
  url "https://github.com/akidon0000/iSimCameraTool/archive/refs/tags/0.0.1.tar.gz"
  sha256 "565483b1e1c26c36c4f74595ba3766b58769f1a71682b5ecd5c508768fae556f"
  license "MIT"

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/isim"
  end

  test do
    system "false"
  end
end
