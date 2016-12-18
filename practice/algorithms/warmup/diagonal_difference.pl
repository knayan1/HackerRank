#!/usr/bin/perl

$n = <>;
chomp $n;
$a_i = 0;
@a = ();
while($a_i < $n){
   my @a_t = split / /, <>;
   chomp @a_t;
   push @a,\@a_t;
   $a_i++;
}
my $size = $n - 1;

while ($i < $n){
	$sum1 += $a[$i][$i];
	$sum2 += $a[$i][$size];
	$size--;
	$i++;
}
print abs ($sum1-$sum2);