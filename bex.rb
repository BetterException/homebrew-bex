class Bex < Formula
  desc "Better Exception handling"
  homepage "https://github.com/BetterException/bex"
  url "https://github.com/BetterException/bex/archive/refs/tags/0.1.tar.gz"
  sha256 "6392a2436e557c4b216e890b74f736ffd66538a904b6259d184f7b000f435fc6"
  depends_on "cmake" => :build
  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
