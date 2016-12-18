$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
my $counter=0;
while (<STDIN>){
    $input = $_;
    chomp($input);
    $output .= &getValue($input)."\n";
	$counter++;
    last if ($counter==$noOfLine);
}
print $output;
sub getValue{
    $input = shift;
    return &bin2dec(~&dec2bin($input));
}
sub dec2bin {
    return unpack("B32", pack("N", shift));
}
sub bin2dec {
    return unpack("N", pack("B32", substr("0" x 32 . shift, -32)));
}