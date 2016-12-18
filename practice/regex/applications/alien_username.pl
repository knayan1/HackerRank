chomp ($n = <>); # no of usernames

$output = '';

for (1..$n) {
	my $usr = <>; chomp $usr;
	$output .= check_validity($usr) ."\n" ;
}
# print "1 = $_" ."\n" for (1..$n);

print $output;
sub check_validity{
	my $username = shift || '';
	chomp $username;
	return (($username =~ /^[_\.]\d+[a-z]*_?$/ig) ? 'VALID' : 'INVALID');
}