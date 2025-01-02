class Bex < Formula
  desc "Better Exception handling"
  homepage "https://github.com/BetterException/bex"
  url "https://github.com/BetterException/bex/archive/refs/tags/0.2.tar.gz"
  sha256 'f08dfd85a25b5f2f3ce139a921a87b169a00379db807797051e6db4958d2054b'
  depends_on "cmake" => :build
  depends_on "openssl" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
    bin.install_symlink prefix/"bex"
  end
end
