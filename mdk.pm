#!/usr/bin/perl
## Author: Find me if you can
## mdk version 0.0.1
use strict;
use warnings;
use constant{
    command_start => 'mkdir app app/packages app/resources app/resources/bash app/keys routes routes/yarns routes/settings testing && touch routes/settings/config.ini && '
};

system(command_start);
if ($?){
    print ("Project can't create, because: $!\n");
}
else{
    print("+ Project created successful.")
}