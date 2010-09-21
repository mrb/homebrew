require 'formula'

class Mongrel2 <Formula
  url 'http://mongrel2.org/static/downloads/mongrel2-1.1.tar.bz2'
  homepage 'http://mongrel2.org/'
  md5 '62ae9294840d7c5e026c70c9efd40324'
  
  depends_on 'zeromq'
  depends_on 'sqlite' if MACOS_VERSION <= 10.5

  def install
    system "make all"
    system "make install PREFIX=#{prefix}"
  end
end
