#!/usr/bin/perl
sub lonelyinteger{
   $b_split = shift;
   for ($i=0;$i<@$b_split;$i+=2) {
        return $$b_split[$i] if ($$b_split[$i] != $$b_split[$i+1])
   }
}
$_a_size = <>;
$_b = <>;
@_b_split = split(' ',$_b);
@_b_split = sort @_b_split;

$res = lonelyinteger(\@_b_split);
print "$res\n";
