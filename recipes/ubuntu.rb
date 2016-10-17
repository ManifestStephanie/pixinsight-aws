

execute 'update packages' do
  command 'apt-get update'
end

package 'Install packages for pixinsight' do
  package_name 'libgstreamer-plugins-base0.10-dev'
end

# Missing packqges:
# ldd PixInsight | grep found | sort
#
#   13  apt-get install libQt
#   14  sudo apt-get install libQta
#   15  sudo apt-get install libqt5core 
#   16  sudo apt-get install libqt5core5a
#   19  sudo apt-get install libqt5network5 libcrypto9
#   20  sudo apt-get install libqt5network5 libcrypto++9
#   21  sudo apt-get install libqt5network5 libcrypto++9v5
#   23  sudo apt-get install libmozjs-24
#   25* sudo apt-get install 
   # 27  sudo apt-get install libqt5multimedia5
   # 29  sudo apt-get install libqt
   # 30  sudo apt-get install libqt5multimediaquick-p5 
   # 33  sudo apt-get install libqt5opengl5 
   # 34  sudo apt-get install libqt5multimediawidgets5
   # 36  sudo apt-get install libssh2-1 libssl1.0.0
   # 38  sudo apt-get install libcrypto1.0.0
   # 39  sudo apt-get install libqt5webkit5
   # 41  sudo apt-get install libqt5sensor5
   # 42  sudo apt-get install libqt5sensors5
   # 43  sudo apt-get install libqt5webchannel5
   # 44  sudo apt-get install libqt5x11extras5
   # 47  sudo apt-get install 
   # 49  sudo apt-get install libqt5xml5
   # 50  sudo apt-get install libqt5positioning5
   # 51  sudo apt-get install libqt5webchannel5
   # 53  sudo apt-get install libmozjs-24-0
   # 54  sudo apt-get install libmozjs-24-0v5
   # 56* sudo apt-get install libmozjs-24-0v5-de
   # 57  sudo apt-get install libmozjs-24-bin
   # 59  sudo apt-get install libmozjs-24-dev
   # 61  sudo apt-get install libsslcommon2
   # 63  sudo apt-get install libcrypto++dev
   # 64  sudo apt-get install libcrypto++-dev
   # 66  sudo apt-get install libxrandr
   # 67  sudo apt-get install libxrandr2
   # 69  sudo apt-get install liblcms2-2
   # 72  sudo apt-get install libssl-dev
   # 74  sudo apt-get install libssl-dev
