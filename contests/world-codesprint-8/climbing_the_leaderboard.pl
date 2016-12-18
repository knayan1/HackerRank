my $n = <>;
chomp $n;

my @scores = reverse sort {$a <=> $b} keys {map {$_ => 1} (split / /, <>)};
chomp @scores;
my $m = <>;
chomp $m;

my @alice_score = split / /, <>;
chomp @alice_score;

print get_position(\@scores, $_) for (@alice_score);

sub get_position {
	my ($arr, $elem) = @_;
	for my $pos (0..@$arr){
		if ($elem == $arr->[$pos]) {
			return ($pos+1);
		} elsif ($elem < $arr->[$pos] && $elem > $arr->[$pos + 1]) {
		return (defined $arr->[$pos + 1] ? $pos+2 : (scalar @$arr) + 1);
		} 
	}
	return 1;
}