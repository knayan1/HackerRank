#!/usr/bin/perl
use bigint;
$n = <>;
chomp $n;
$arr_temp = <>;
@arr = split / /,$arr_temp;
chomp @arr;
$sum = 0;
$sum += $_ for (@arr);
print $sum;