$string = <STDIN>;
$string = lc($string);
$string =~ s/\s+//g;
@arr = split ('',$string);
@arr = sort @arr;
%seen=();
@unique = grep { ! $seen{$_} ++ } @arr;
if (scalar @unique==26){
    print "pangram";
} else{
     print "not pangram";
}