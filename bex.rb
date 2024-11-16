class Bex < Formula
  desc "Better Exception handling"
  homepage "https://github.com/BetterException/bex"
  url "https://github.com/BetterException/bex/archive/refs/tags/0.1.tar.gz"
  sha256 "8890e660fbdf2fe77a7cee89f84872aaaa71d23629e01b9dc498494e109338a9"
  depends_on "cmake" => :build
  depends_on "openssl" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
    bin.install_symlink prefix/"bex"
  end
end
