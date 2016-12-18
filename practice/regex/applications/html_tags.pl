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
    my @sorted_words = sort { lc($a) cmp lc($b) } @unique;
    $joined = join(';',@sorted_words);
    $joined =~ s/^;//;
	print $joined;

sub getValue{
    my $input = shift || '';
	my @arr;
    while ($input =~ /<\s*([a-z1-6]+)\s*(.*?)>/ig) {
		push(@arr,$1);
    }
	$joined = join(';',@arr);
	return $joined;
}