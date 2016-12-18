$search = <STDIN>;
chomp;
$size= <STDIN>;
chomp;
$input = <STDIN>;
chomp;
@arr = split (' ',$input);
exit if ($size != @arr);
for ($i=0; $i<@arr; $i++){
    if ($arr[$i] == $search) {
        print $i;
        exit;
    }
}