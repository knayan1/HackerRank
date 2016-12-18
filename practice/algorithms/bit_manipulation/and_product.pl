# few test cases failed and few timeout.
# If anyone is working on it, please provide the correct version
$n = <>;
chomp;
while ($n>0){
    $_ = <>; chomp;
    push @input, $_;
    $n--;
}
for ($i=0;$i<@input;$i++){
   $res=0;
   @array = split(/ /,$input[$i]);
   @array = ($array[0]..$array[1]);
   #print "@array\n";
   $res = $array[0];
   $res &= $_ for @array;
    print $res."\n";
}