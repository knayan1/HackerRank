#!/usr/bin/perl
require bigint;

$n = <STDIN>;
chomp $n;
@arr = split / /, <>;
chomp @arr;

for (@arr){
	if ($_ < 0){
		$neg ++;
	} elsif ($_ > 0) {
		$pos++;
	} elsif ($_ == 0) {
		$zero++;
	}
}
printf('%.6f', ($pos/$n));
print "\n";
printf('%.6f', ($neg/$n));
print "\n";
printf('%.6f', ($zero/$n));