$size= <STDIN>;
chomp;
$input = <STDIN>;
chomp;
@arr = split (' ',$input);
exit if ($size != @arr);
my @arr = sort { $a <=> $b } @arr;
print "@arr\n";
