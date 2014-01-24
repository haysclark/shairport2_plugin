shairport_plugin
================

ShairPort Plugin for Squeezebox Server adds airTunes support for each Squeezebox server client.

To install add this repo on your Setting:Plugins page:

http://raw2.github.com/StuartUSA/shairport_plugin/master/public.xml

Then install the plugin and enable as per usual.

Once installed compile the helper app, on Linux:

    > cpan HTTP::Request HTTP::Message Crypt::OpenSSL::RSA IO::Socket::INET6 Net::SDP
    > apt-get install build-essential libssl-dev libcrypt-openssl-rsa-perl \
            libao-dev libio-socket-inet6-perl libwww-perl avahi-utils pkg-config
    > cd /var/lib/squeezeboxserver/cache/InstalledPlugins/Plugins/ShairTunes/shairport_helper/
    > make
    > cp shairport_helper /usr/local/bin
  
See http://forums.slimdevices.com/showthread.php?100379-Announce-ShairTunes-Plugin
