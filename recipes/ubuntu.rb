

execute 'update packages' do
  command 'apt-get update'
end
%w{
libgstreamer-plugins-base0.10-dev
libsm6
libxi6
libxrender1
libxrandr2
libfontconfig1
libssl-dev
libgl1-mesa-glx
libpulse0
libxcomposite1
libqt5core5a
libqt5gui5
libqt5multimedia5
libqt5multimediawidgets5
libqt5positioning5
libqt5printsupport5
libssh2-1
libqt5qml5
libqt5quick5
libqt5sensors5
libqt5sql5
libqt5webkit5
libqt5x11extras5
libqt5xml5
libmozjs-24-dev
expect
}.each do |pkg|
  package 'Install packages #{pkg} for pixinsight' do
    package_name pkg
  end
end



