use strict;
use warnings;
use constant{
    port => int(rand(3000))
};
use IO::Socket;

my $added = rand(10);
my $number = join '' => rand(0xFFFFFFF);
my $hash = int($number+$added);

print "You hash new is $hash in the port ", port;
# Bucked for private ports
my $bucked = new IO::Socket::INET (
    LocalHost => 'localhost', # 127.0.0.1 -> localhost
    LocalPort => port,
    Proto => 'tcp',
    Listen => 1,
    Reuse => 1,
    Accept => 1
);
# Requests of the bucked
#my $requests = $bucked->accept();
for (my $i=0; $i<=port; $i++){
    print("VPN started in port $i\n");
}
print("Connection crypt:\n");
for (my $ini=1; $ini<=4; $ini++){
    my $a = int(rand(9999));
    my $b = int(rand(9999));
    my $c = int(rand(9999));
    my $d = int(rand(9999));
    my $e = int(rand(7777));
    my $f = int(rand(9999));
    my $g = int(rand(8888));
    my $h = int(rand(8888));
    my $i = int(rand(8888));
    print("$a $b $c $d $e $f $g $h $i\n");
}