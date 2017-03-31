open(NEGLIST, "<poles/en/enpurenegation.list");
while (<NEGLIST>) {
    chomp;
    s/\'//;
    $negation{$_} = 1;
}
close NEGLIST;
while (<>) {
    $lines++;
    $alllines++;
    s/™//g;
    s/\\//g;
    ($item,$txt) = split "\t";
    next if length $item < 2;
    @words = split " ",$txt;
    $frequency{$item}++;
    $position = 0;
    for $w (@words) {
	$negscore{$item}++  if $negation{$w};
	$foundit = 1 if $item eq $w;
    }
if ($lines > 100000) {
    print "$allines ==============================\n";
print "key\tfrequency\tnegscore\tbutscore\thedscore\tampscore\tseemscore\tseemedscore\t-lyscore\n";
for $key (keys %frequency) {
    print "$key\t$frequency{$key}\t$negscore{$key}\t$butscore{$key}\t$hedscore{$key}\t$ampscore{$key}\t$seemscore{$key}\t$seemedscore{$key}\t$lyscore{$key}\n";
}
$lines = 0;
}
}
    print "$allines ==============================\n";
print "key\tfrequency\tnegscore\tbutscore\thedscore\tampscore\tseemscore\tseemedscore\t-lyscore\n";
for $key (keys %frequency) {
    print "$key\t$frequency{$key}\t$negscore{$key}\t$butscore{$key}\t$hedscore{$key}\t$ampscore{$key}\t$seemscore{$key}\t$seemedscore{$key}\t$lyscore{$key}\n";
}
