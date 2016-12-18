$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
$output;
$line = 'line' if ($noOfLine==1);
if ($noOfLine<=100 && $noOfLine>=1){  #number of line limit: 1-100
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        $output .=&getValue($input)."\n";
        $counter++;
        last if ($counter==$noOfLine);
    }
}
print "$output";
#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
    ($x,$y)=($1,$2) if ($input =~ /\((.*?), (.*?)\)/);
    
	return "Invalid" if (!(&checkLengthLimit($x,-90,90) && &checkLengthLimit($y,-180,180)));
	return 'Invalid' if (($ x=~ /\./ && $x !~ /^.*\.\d+$/) || ($y =~ /\./ && $y !~ /^.*\.\d+$/));
	
	if ($input =~ /^\([-|+]?[1-9]{1}[0-9]?\.?\d*, [-|+]?1?[0-9]{0,2}\.?\d*\)$/){
		return "Valid";
	} else {
		return "Invalid"
	};
}

sub checkLengthLimit{
    my $num = shift ||'';
    my $minLimit = shift;
    my $maxLimit = shift;
    if ($num >= $minLimit && $num <= $maxLimit){
        return true;
    } else{
        return '';
    }
}