class Bex < Formula
  desc "Better Exception handling"
  homepage "https://github.com/BetterException/bex"
  url "https://github.com/BetterException/bex/archive/refs/tags/0.2.tar.gz"
  sha256 
  depends_on "cmake" => :build
  depends_on "openssl" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
    bin.install_symlink prefix/"bex"
  end
end
