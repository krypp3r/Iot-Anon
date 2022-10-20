# Encrypt keys IP and VPN that will create Mrx04programmer
use Net::IP;
use constant{
    ip => (`ifconfig -a` =~ /inet addr:(\S+)/g)
};
my $local = new Net::IP(ip) 
or die (Net::IP::Error());

@ip_man = ip->ip();
@sho = ip->short();
@mask = ip->mask();
@type = ip->type();
@rev = ip->reverse_ip();
