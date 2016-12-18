$time = <>;
chomp $time;
if ($time =~ /(\d\d?)(.*?)([A-Z]+)$/i) {
    my $hh = $1;
    $hh -= 12 if (uc $3 eq 'AM' && $hh == 12);
    $hh += 12 if (uc $3 eq 'PM' && $hh != 12);
    $hh = sprintf("%02d", $hh);
    print ($hh . $2);
}