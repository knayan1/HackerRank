while (<STDIN>){
    chomp;
    push (@input, $_);
    $input = join ';',@input;
}
print &getValue($input);

#subroutine to return the desired output
sub getValue{
	my $input = shift || '';
	if ($input =~ m/void main\(String/ || $input =~ m/System\.out\.print/){
		return "Java";
	} elsif ($input =~ /\#include<.*?\.h>/){
		return "C";
	} else{
		return "Python";
	}
}