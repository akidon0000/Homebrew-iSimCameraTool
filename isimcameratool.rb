class Isimcameratool < Formula
  desc "IPhoneシミュレーターにMacのカメラを表示させるためのMacアプリです"
  homepage "https://github.com/akidon0000/isimcameratool"
  url "https://github.com/akidon0000/iSimCameraTool/archive/refs/tags/0.0.2.tar.gz"
  sha256 "74074b519e8c2de24c55a4a6e8ab494de0ee1146bfa5a78e5f28398b030ef9aa"
  license "MIT"

  def install
      system "swift", "build", "-c", "release", "--disable-sandbox"
      bin.install ".build/release/isim"
  end

  test do
    system "false"
  end
end
