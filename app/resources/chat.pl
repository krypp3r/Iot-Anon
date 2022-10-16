#!/usr/bin/perl
# Chat Priv
use IO::Socket;
use strict;
use warnings;
my $port = '4444';
my $socket = new IO::Socket::INET (
    PeerAddr => 'localhost',
    PeerPort => $port,
    Proto => 'tcp'
);

die "No can't create chat-client, because: $!n" unless $socket;

print "Enter data to send >>";
my $data = <STDIN>;
chomp $data;
print $socket "Message -> '$data'\n";

close($socket);