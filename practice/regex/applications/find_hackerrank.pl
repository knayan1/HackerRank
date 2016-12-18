my ($input,$output,$numOfWords,$noOfLine) =('','',0,0);
$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
$line = 'line' if ($noOfLine==1);
if ($noOfLine =~ m/^[1-9]{1}0?$/){  #number of line limit: 1-10
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        $counter++;
        $numOfWords = &findNumOfWords($input);
        exit if ($numOfWords !~ m/^[1-9]{1}0{0,2}$/); #word limit:1-100
        $output .= &getValue($input)."\n";
        last if ($counter==$noOfLine);
    }
}    
print "$output";

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
    if ($input =~ m/^(hackerrank)$/){
         return '0';  
    }elsif ($input =~ m/^(hackerrank)/){
        return '1';   
    }elsif ($input =~ m/(hackerrank)$/){
          return '2'; 
    }else{
         return '-1'; 
    }
}
#subroutine to find number of words in a line
sub findNumOfWords{
    my $text = shift ||'';
    my $numOfWords =0;
    while ($text =~ /\S+/g){
        $numOfWords++;
        $word = $&;
        exit if (length($word)<1 ||length($word)>20); #character length limit 1-20
    }
    return $numOfWords;
}