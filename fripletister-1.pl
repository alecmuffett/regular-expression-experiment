#!/usr/bin/perl

# from fripletister on reddit
$pat = qr!(
\b
(1?[1-9][0-9]?|2[0-5]{2})
\.
(1?[1-9][0-9]?|2[0-5]{2})
\.
(1?[1-9][0-9]?|2[0-5]{2})
\.
(1?[1-9][0-9]?|2[0-5]{2})
\b
)!ox;

while (<>) {
    while (s/$pat/-/o) {
	print "$1\n";
    }
}

