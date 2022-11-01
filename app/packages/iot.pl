#!/usr/bin/perl
use IO::Socket::INET;
use strict;
use warnings;
my $host = '127.0.0.1'; # Host to connect
my $port = '4444';
my $sock = new IO::Socket::INET (
    PeerAddr => $host,
    PeerPort => $port,
    Proto => 'tcp'
);

die "No can't connect with $host" unless $sock;

print "User >> ";
my $user = <STDIN>;
chomp $user;
print "Message >> ";
my $msg = <STDIN>;
chomp $msg;
print $sock "$user >> $msg\n";
close($sock);