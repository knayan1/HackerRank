#!/usr/bin/perl
use strict;

my ($n, $k, $q) = split / /, <>;
my @a = split / /, <>;
chomp @a;

# rotation
foreach (1 .. $k) {
    unshift ( @a, pop @a );
}

my @res;
for (0..$q-1){
    my $m = <STDIN>;
    chomp $m;
    push @res, $a[$m];
}

print $_."\n" for (@res);