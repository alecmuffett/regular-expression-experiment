#!/usr/bin/perl

# suggestion by perlgeek on reddit
use strict;
use warnings;
my $octet = qr/\b(\d{1,3})\b(??{ $^N <= 255  ? '' : '(?!)'})/;
my $pat = qr/((?:$octet\.){3}$octet)/;

while (<>) {
    while (s/$pat/-/o) {
	print "$1\n";
    }
}
