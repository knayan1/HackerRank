use bignum;
chomp ($input = <>);
($n1,$n2,$n)=split(/ /,$input);
for ($i=3;$i<=$n;$i++){
	$res = $n2**2 + $n1;
	$n1 = $n2;
	$n2 = $res;
}
print $res;