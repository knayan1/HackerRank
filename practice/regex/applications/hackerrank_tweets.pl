$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
$output = 0;
$line = 'line' if ($noOfLine==1);
if ($noOfLine<=10 && $noOfLine>=1){  #number of line limit: 1-100
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        $output++ if (&getValue($input) eq 'found');
        $counter++;
        last if ($counter==$noOfLine);
    }
} 
print "$output";

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
    if ($input =~ /hackerrank/ig){return 'found';}
    else {return 'not found'};
    
}