chomp ($n = <>); # no of sentences

my ($output, $sentence ) = '' x 2;

$sentence .= <> for (1..$n);

my $test_cases = <>; chomp $test_cases;
for (1..$test_cases) {
	$ct = 0;
	chomp ($word = <>);
	$ct++ while ($sentence =~ /\b$word\b/igm);
	$output .= $ct ."\n";
}
print $output;