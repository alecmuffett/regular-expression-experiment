#!/usr/bin/perl

# match digits
$pat = qr/(
(?:(?<!\d)|\A)
(?:(?:\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.){3}
(?:\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])
(?:(?!\d)|\z)
)/ox;

while (<>) {
    while (s/$pat/-/o) {
	print "$1\n";
    }
}

