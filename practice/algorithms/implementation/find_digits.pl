$n = <>;
chomp;
while ($n>0){
    $_ = <>; chomp;
    push @input, $_;
    $n--;
}
for ($i=0;$i<@input;$i++){
  $ct=0;
  @arr = split('',$input[$i]);
   for ($j=0;$j<@arr;$j++){
        $ct++ if ($arr[$j] && ($input[$i] % $arr[$j] == 0));
   }
   $op.=$ct."\n";
}
print $op;