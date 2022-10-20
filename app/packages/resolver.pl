# Resolver DNS - Krypp3r
use strict;
use warnings;
use Net::DNS;

#open(IN, '../../routes/settings/config.ini');
print("Host the resolve:");
my $host = <STDIN>;
chomp $host;
my $dns= $host;

sub fore(){
    for (my $i = 0; $i<100; $i++){
    my @web = rr($dns, "AAAA", "IN");
    print(@web);
}

}

if ($dns =~ /.com/){
    die "Host not compatible.";
}
elsif ($dns =~ /.onion/){
    &fore;
}
else{
    &fore;
}
