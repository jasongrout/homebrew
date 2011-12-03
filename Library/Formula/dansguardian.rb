require 'formula'

class Dansguardian < Formula
  url 'http://dansguardian.org/downloads/2/Stable/dansguardian-2.10.1.1.tar.gz'
  homepage 'http://dansguardian.org/'
  md5 '0987a1c9bfbdf398118386f10279611a'

  # depends_on 'cmake' => :build
  depends_on 'pcre'
  depends_on 'squid'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
    # for some reason, /usr/local/etc/dansguardian is not a link
  end

  def test
    # This test will fail and we won't accept that! It's enough to just
    # replace "false" with the main program this formula installs, but
    # it'd be nice if you were more thorough. Test the test with
    # `brew test dansguardian`. Remove this comment before submitting
    # your pull request!
    system "false"
  end
end
