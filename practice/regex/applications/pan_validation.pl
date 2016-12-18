$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
$line = 'line' if ($noOfLine==1);
if ($noOfLine<=10 && $noOfLine>=1){  #number of line limit: 1-10
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
    if ($input =~ /^[A-Z]{5}\d{4}[A-Z]$/){return 'YES';}
    else {return 'NO'};
    
}