$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
$line = 'line' if ($noOfLine==1);
if ($noOfLine =~ m/^[1-9]{1}0?$/){  #number of line limit: 1-10
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        exit if ($input =~ m/[^a-zA-Z\s]/g);
        $counter++;
        $numOfWords = &findNumOfWords($input);
        exit if ($numOfWords !~ m/^[1-9]{1}0{0,1}$/); #word limit:1-10
        $output .= &getValue($input)."\n" if &getValue($input);
        last if ($counter==$noOfLine);
    }
} 
print "$output";

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
    if ($input =~ m/^(hi [^d])/i){
         return $input;  
    }
}
#subroutine to find number of words in a line
sub findNumOfWords{
    my $text = shift ||'';
    my $numOfWords =0;
     $numOfWords++ while ($text =~ /\S+/g);
    return $numOfWords;
}