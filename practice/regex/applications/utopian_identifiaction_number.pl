$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
if ($noOfLine<=100 && $noOfLine>=1){  #number of line limit: 1-100
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        $output .= &getValue($input)."\n";
        $counter++;
        last if ($counter==$noOfLine);
    }
} 
print "$output";

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
    if ($input =~ /^[a-z]{0,3}\d{2,8}[A-Z]{3,}$/){return 'VALID';}
    else {return 'INVALID'};
    
}