$noOfLine = <>;
chomp ($noOfLine);
my $counter=0;
while (<>){
    $input = $_;
    chomp($input);
    $output .= &getValue($input)."\n";
   $counter++;
    last if ($counter==$noOfLine);
}
print $output;

#subroutine to return the desired output
sub getValue{
    $cycle = shift || '';
    $ht=1;
    while ($cycle>0){
        $ht*=2; $cycle--;
        $ht+=1 if $cycle;
        $cycle--;
    }
    return $ht;
}