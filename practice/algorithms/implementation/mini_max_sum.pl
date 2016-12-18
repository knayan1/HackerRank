my @a = sort (split / /, <>);
$sum += $_ for @a;
print (($sum - $a[-1]) . " " . ($sum - $a[0]));