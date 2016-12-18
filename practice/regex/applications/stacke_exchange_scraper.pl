while (<STDIN>){
    chomp;
    push (@input, $_);
    $input = join ';',@input;
}
print &getValue($input);

#subroutine to return the desired output
sub getValue{
 my $input = shift || '';
	while ($input =~ m/<\s*h3.*?>\s*<a\s+(.*?)>(.*?)<\/a>/ig){
		push (@title, $2); push @title1, $1;
	}

	for ($i=0;$i<@title1;$i++){
		if ($title1[$i] =~ m/href=["']\/questions\/(\d+)\//ig){
			push (@id, $1);
		}
	}
	while ($input =~ m/asked\s*<span.*?class="relativetime".*?>\s*(.*?)\s*<\/span/ig){
		push (@time, $1);
	}
	for ($i=0;$i<@title;$i++){
	   $output .= $id[$i].";".$title[$i].";".$time[$i]."\n";
	}

	return $output;
}