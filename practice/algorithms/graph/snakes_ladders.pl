use List::Util qw(min);

for(1 .. <>) {
	my $jump = {};
	readInput($jump); # ladders
	readInput($jump); # snakes
	
	my $rolls = rollDice(1, 0, $jump, {});
	unless ($rolls) {
		print "-1\n";
		next;
	}
	print "$rolls\n";
}

sub rollDice {
	my ($position, $rolls, $jump, $past) = @_;
	my %past = %$past;
	$past{$position} = 1;
	
	my @best = ();
	roll: for(1 .. 6) {
		my $new = $position + $_;
		if($new == 100) {
			push(@best,$rolls+1);
			last roll;
		}
		
		# Skip if we've done this square
		next if(defined $past{$new});
		if(defined $jump->{$new}) {
			# This square jumps somewhere
			my $goto = $jump->{$new};
			
			if($goto == 100) {
				push(@best,$rolls+1);
				last roll;
			} 
			
			# Skip if we have been here before
			next roll if(defined $past{$goto});
			my $result = rollDice($goto, $rolls+1, $jump, \%past);
			push(@best, $result) if($result);
		} else {
			# This is a basic square (no jump)
			if($_ != 6) {
				foreach my $next ($_+1 .. 6) {
					if(!defined $jump{$position+$next}) {
						$past{$new} = 1;
						next roll;
					}
				}
			}
			my $result = rollDice($new, $rolls+1, $jump, \%past);
			push(@best, $result) if($result);
		}
	}
	return 0 if(!@best);
	
	# Find the lowest number of rolls
	return min(@best);
}


sub readInput {
	my $jump = shift;
	for(1 .. <>) {
		my($from,$to) = split ' ',<>;
		chomp($to);
		$jump->{$from} = $to;
	}
}