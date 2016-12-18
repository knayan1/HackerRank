#!/usr/bin/perl

sub maxXor{
   $a = shift;
   $b = shift;
   $diff = $b - $a;
   for ($i=$a; $i<=$b; $i++){
        for ($j=$i; $j<=$b; $j++){
            push @xarr , $i^$j;
        }
   }
   $max = 0; grep {$max = ($max < $_)?$_:$max} @xarr;
   return $max;
}
$_l = <>;


$_r = <>;


$res = maxXor($_l, $_r);
print "$res\n";


