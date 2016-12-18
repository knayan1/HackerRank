#!/usr/bin/perl

$s = <STDIN>;
chomp $s;
print (scalar (split '_', $s));