my ($input,$output,$numOfWords,$noOfLine) =('','',0,0);
$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
if ($noOfLine >=1 && $noOfLine <=20){ 
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        last if ($input !~ m/[\d-\s]+/g);
        ($cc,$lac,$ph) = &getValue($input);
        $counter++;
        $output .= "CountryCode=$cc,LocalAreaCode=$lac,Number=$ph\n";
        last if ($counter==$noOfLine);
    }
}    
print "$output";

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
    my ($cc,$lac,$ph)=('','','');
    if ($input =~ m/-/){
        ($cc,$lac,$ph) = split(/-/,$input);
    }
    else{
        ($cc,$lac,$ph) = split(/\s+/,$input);  
    }
    exit if (!(&checkLengthLimit($cc,1,3) && &checkLengthLimit($lac,1,3) && &checkLengthLimit($ph,4,10)));
    return ($cc,$lac,$ph);
}

sub checkLengthLimit{
    my $num = shift ||'';
    my $minLimit = shift;
    my $maxLimit = shift;
    
    if ($num >= $minLimit && $num <= $maxLimit){
        return true;
    }else{
        return false;
    }
}