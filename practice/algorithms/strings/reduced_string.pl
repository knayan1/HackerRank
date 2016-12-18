my $input = <>;
chomp $input;
while ($input =~ s/(\w)\1//g) {};
print ($input || 'Empty String');