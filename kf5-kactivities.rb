require "formula"

class Kf5Kactivities < Formula
  url "http://download.kde.org/stable/frameworks/5.30/kactivities-5.30.0.tar.xz"
  sha256 "1b2392dcdb5358c0016dd472ed8c69f969425654394a9f0d1c4fe19d9844585a"
  homepage "http://www.kde.org/"

  head 'git://anongit.kde.org/kactivities.git'

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "qt5"
  depends_on "haraldf/kf5/kf5-kconfig"
  depends_on "haraldf/kf5/kf5-kdeclarative"
  depends_on "haraldf/kf5/kf5-kdbusaddons"
  depends_on "haraldf/kf5/kf5-ki18n"
  depends_on "haraldf/kf5/kf5-kcmutils"
  depends_on "boost"

  def install
    args = std_cmake_args

    mkdir "build" do
      system "cmake", "..", *args
      system "make", "install"
      prefix.install "install_manifest.txt"
    end
  end
end
