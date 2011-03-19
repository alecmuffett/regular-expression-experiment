#!/usr/bin/perl

use Regexp::Common;

$pat = $RE{net}{IPv4};

while (<>) {
    while (s/($pat)/-/o) {
	print "$1\n";
    }
}
