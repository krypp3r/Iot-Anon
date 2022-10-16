#!/usr/bin/perl
## Author: Find me if you can
## mdk version 0.0.1
use strict;
use warnings;
use constant{
    command_end => 'rm -rf app/ routes/ testing/'
};

system(command_end);
if ($?){
    print ("Project can't remove, because: $!\n");
}
else{
    print("- Project removed successful.")
}