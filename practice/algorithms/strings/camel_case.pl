$s = <STDIN>;
chomp $s;
$ct = 1;
$ct++ while ($s =~ /[A-Z]/g);
print $ct;