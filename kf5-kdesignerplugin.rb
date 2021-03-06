require "formula"

class Kf5Kdesignerplugin < Formula
  url "http://download.kde.org/stable/frameworks/5.30/kdesignerplugin-5.30.0.tar.xz"
  sha256 "bf6db9ebf47c73aa9a2f3175603dfdf0ae15d4f62929352ad9288df61310c741"
  homepage "http://www.kde.org/"

  head 'git://anongit.kde.org/kdesignerplugin.git'

  depends_on "cmake" => :build
  depends_on "gettext" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "haraldf/kf5/kf5-kdoctools" => :build
#  depends_on "haraldf/kf5/kf5-kdewebkit"
  depends_on "haraldf/kf5/kf5-kplotting"
  depends_on "qt5"

  def install
    args = std_cmake_args


    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
