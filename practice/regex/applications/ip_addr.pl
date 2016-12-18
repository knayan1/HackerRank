$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
if ($noOfLine<=50 && $noOfLine>=1){  #number of line limit: 1-100
    my $counter=0;
    while (<STDIN>){
        $input = $_;
        chomp($input);
        $output .= &getValue($input)."\n";
        $counter++;
        last if ($counter==$noOfLine);
    }
}
print "$output";
#subroutine to return the desired output
sub getValue{
    my $input = shift || '';
    if ($input =~ /^(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5]))\.(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5]))\.(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5]))\.(\d|[1-9]\d|1\d\d|2([0-4]\d|5[0-5]))$/){ return 'IPv4';}
    elsif ($input =~ /^[a-f\d]{1,4}\:[a-f\d]{1,4}\:[a-f\d]{1,4}\:[a-f\d]{1,4}\:[a-f\d]{1,4}\:[a-f\d]{1,4}\:[a-f\d]{1,4}\:[a-f\d]{1,4}$/i) {return 'IPv6';}
    else {return 'Neither'};

}