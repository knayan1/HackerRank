use URI::Escape;
$noOfLine = <>;  #Input number of lines
chomp ($noOfLine);
my $counter=0;
while (<>){
    $input = $_;
    chomp($input);
    $input = uri_escape($input);
	&getValue($input);
   $counter++;
    last if ($counter==$noOfLine);
}

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
	$input = uri_unescape($input);
	my ($link,$text)=('','');
	while ($input =~ m/<a (.*?)>(.*?)<\/a>/ig){
		$atag = $&;
		$text = $ainside = $2;
		$text = $1 if ($ainside =~ m/>([^>]+)?</ig);
		$text = '' if ($text =~ /</);
		($link = $atag) =~ m/href=(?:("|'))(.*?)\1/ig;
		$flink = $2;
		$flink =~ s/^\s+|\s+$//g;
		$text =~ s/^\s+|\s+$//g;
		print $flink.",".$text."\n" if $flink;
	}
	return $flink.",".$text;
}