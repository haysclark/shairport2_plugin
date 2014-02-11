shairport_plugin
================

ShairPort Plugin for Squeezebox Server adds airTunes support for each Squeezebox server client.

To install the plugin open the LMS GUI then click on Settings, then select the Plugins tab,
at the bottom of the page add the repo:

http://raw2.github.com/StuartUSA/shairport_plugin/master/public.xml

Then install the plugin and enable as per usual.

Once installed the helper app needs to be compiled and/or installed into the systems PATH. There
are a number of pre-compiled binaries in the directory:

/var/lib/squeezeboxserver/cache/InstalledPlugins/Plugins/ShairTunes/shairport_helper/pre-compiled

Copy the one for your system into the PATH, on a linux system you may copy it to:

/usr/loca/bin/shairport_helper   - note the file needs to be renamed.
 
To compile the helper app, on Linux:

    > cpan HTTP::Request HTTP::Message Crypt::OpenSSL::RSA IO::Socket::INET6 Net::SDP
    > apt-get install build-essential libssl-dev libcrypt-openssl-rsa-perl \
            libao-dev libio-socket-inet6-perl libwww-perl avahi-utils pkg-config
    > cd /var/lib/squeezeboxserver/cache/InstalledPlugins/Plugins/ShairTunes/shairport_helper/
    > make
    > cp shairport_helper /usr/local/bin
  
See http://forums.slimdevices.com/showthread.php?100379-Announce-ShairTunes-Plugin
