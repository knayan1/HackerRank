$noOfLine = <STDIN>;  #Input number of lines
chomp ($noOfLine);
$line = 'line' if ($noOfLine==1);
if ($noOfLine<=100 && $noOfLine>=1){  #number of line limit: 1-100
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
    @langArr = ('C','CPP','JAVA','PYTHON','PERL','PHP','RUBY','CSHARP','HASKELL','CLOJURE','BASH','SCALA','ERLANG','CLISP','LUA','BRAINFUCK','JAVASCRIPT','GO','D','OCAML','R','PASCAL','SBCL','DART','GROOVY','OBJECTIVEC');
    $input =~ /^([\d]{5}) ([A-Z]+)$/i;
   if ( grep( /^$2$/, @langArr ) ){return 'VALID';}
    else {return 'INVALID'};
    
}