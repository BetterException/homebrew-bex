class Bex < Formula
  desc "Better Exception handling"
  homepage "https://github.com/BetterException/bex"
  url "https://github.com/BetterException/bex/archive/refs/tags/0.2.tar.gz"
  sha256 900733b3e9b2afb58e5b1fdb605581fd9f0d51411800739e8dd180377771ed7a
  depends_on "cmake" => :build
  depends_on "openssl" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
    bin.install_symlink prefix/"bex"
  end
end
