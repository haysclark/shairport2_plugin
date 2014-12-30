use strict;

package Plugins::ShairTunes::Utils;

use Config;

sub helperBinary() {
     my ($volume, $directory, $file) = File::Spec->splitpath(__FILE__);
     my $shairtunes_helper;
     
     if ( $Config{'archname'} =~ /solaris/ ) {
          $shairtunes_helper = $directory. "helperBinaries/shairport_helper-i86pc-solaris";
     }
     elsif ( $Config{'archname'} =~ /linux/ ) {
          $shairtunes_helper = $directory. "helperBinaries/shairport_helper-x64-linux";
     }
     else {
          die("No shairport_helper binary for your system available.");
     }
     return $shairtunes_helper;
}

sub ip6bin() {
     my $ip = shift;
     $ip =~ /((.*)::)?(.+)/;
     my @left = split /:/, $2;
     my @right = split /:/, $3;
     my @mid;
     my $pad = 8 - ($#left + $#right + 2);
     if ($pad > 0) {
          @mid = (0) x $pad;
     }
     pack('S>*', map { hex } (@left, @mid, @right));
} 

1;