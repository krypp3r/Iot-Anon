#!/usr/bin/perl
use IO::Socket;
use strict;
use warnings;
my $port = '4444';
my $socket = new IO::Socket::INET (
    LocalHost => 'localhost', # 127.0.0.1 -> localhost
    LocalPort => $port,
    Proto => 'tcp',
    Listen => 1,
    Reuse => 1,
    Accept => 1
);

die "No can't run server, because: $!n" unless $socket;

print("Server running in the port $port \n");
my $requests = $socket->accept();
while (<$requests>){
    print $_;
}

close($socket);