$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
if ($noOfLine<=100 && $noOfLine>=1){  #number of line limit: 1-100
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        $output .= &getValue($input).";" if &getValue($input);
        $counter++;
        last if ($counter==$noOfLine);
    }
}

@arr = split(/;/,$output);
%seen=();
@unique = grep { ! $seen{$_} ++ } @arr if ($_);
my @sorted_words = sort { $a cmp $b } @unique;
$joined = join(';',@sorted_words);
$joined =~ s/^;//;
print $joined;

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
	my @arr;
    while ($input =~ /\w+([\.-]?\w+)*\@\w+([\.-]?\w+)*(\.\w{2,})/ig) {
		push(@arr,$&);
    }
	$joined = join(';',@arr);
	return $joined;
}