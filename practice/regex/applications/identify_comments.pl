while (<STDIN>){
    $input = $_;
    chomp($input);
	push (@inArr, $input);
}

$sep = "#;#";
$jinput = join ($sep,@inArr);
$input =~ s/\s*\Q$sep\E/\Q$sep\E/g;
print &getValue($jinput);

#subroutine to return the desired output
sub getValue{
    my $input = shift || '';

	while ($input =~ /(\/\/.*?\Q$sep\E) | (\/\*(.|[\r\n])*?\*\/)/xg){
		push (@arr, $&);
	}
	$joined= join ("#####",@arr);
	$joined =~ s/\s*#####\s*/#####/g;
	$joined =~ s/(\Q$sep\E|#####)/\n/ig;
	$joined =~ s/(\n|\r)+/$1/g;
	$joined =~ s/\n\s+/\n/g;
	$joined =~ s/\r\s+/\r/g;
	return $joined;
}