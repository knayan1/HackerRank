#!/usr/bin/perl

$n = <STDIN>;
chomp $n;
$arr_temp = <STDIN>;
@arr = split / /,$arr_temp;
chomp @arr;
$sum = 0;
$sum += $_ for (@arr);
print $sum;