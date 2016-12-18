$T=<>;chomp;
while($T>0){
    $M=<>;chomp;
    $N=<>;chomp;
    $C=<>;chomp;
    @c=split(/ /,$C);
    
    for ($i=0;$i<@c;$i++){
        for ($j=$i+1;$j<@c;$j++){
               print ($i+1,' ',$j+1,"\n") if ($c[$i]+$c[$j] == $M);
        }
    }
    $T--;
}