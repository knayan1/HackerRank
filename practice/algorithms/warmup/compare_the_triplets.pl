#!/usr/bin/perl

@a0_arr = split / /, <>;
@b0_arr = split / /, <>;

$alice = $bob = 0;

for $i (0.. scalar @a0_arr) {
	if ( $a0_arr[$i] > $b0_arr[$i] ) {
        $alice++;
    } elsif ( $b0_arr[$i] > $a0_arr[$i] ) {
        $bob++;
    }
}
print "$alice $bob";