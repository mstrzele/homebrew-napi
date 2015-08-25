class Napi < Formula
  desc "Napi Projekt Client and Subotage subtitle format converter"
  homepage "https://github.com/dagon666/napi"
  url "https://github.com/dagon666/napi/archive/v1.3.5.tar.gz"
  sha256 "a51f1c30f04bdd8fb3b267f4adbe5c8caa80e3e3320fda7d7be0a6ef5faeb961"

  depends_on "wget"
  depends_on "p7zip" => :optional
  depends_on "ffmpeg" => :optional
  depends_on "media-info" => :optional
  depends_on "mplayer" => :optional
  depends_on "coreutils" => :optional

  def install
    bin.mkpath
    share.mkpath

    system "./install.sh", "--bindir", bin, "--shareddir", share
  end

  test do
    system bin/"napi.sh", "*"
  end
end
