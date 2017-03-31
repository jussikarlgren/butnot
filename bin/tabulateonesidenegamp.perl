open(AMPLIST, "</bigdata/research/experiments/0.polarity/poles/en/enamplifyGrade.list");
while (<AMPLIST>) {
    chomp;
    $amplify{$_} = 1;
}
close AMPLIST;
open(AMPLIST, "</bigdata/research/experiments/0.polarity/poles/en/enamplifyTruly.list");
while (<AMPLIST>) {
    chomp;
    $truly{$_} = 1;
}
close AMPLIST;
open(NEGLIST, "</bigdata/research/experiments/0.polarity/poles/en/enpurenegation.list");
while (<NEGLIST>) {
    chomp;
    s/\'//;
    $negation{$_} = 1;
}
close NEGLIST;
open(HEDGELIST, "</bigdata/research/experiments/0.polarity/poles/en/enhedge.list");
while (<HEDGELIST>) {
    chomp;
    s/\'//;
    $hedge{$_} = 1;
}
close HEDGELIST;
while (<>) {
    $lines++;
    $alllines++;
    s/™//g;
    s/\\//g;
    ($item,$txt) = split "\t";
    next if length $item < 2;
    next unless $item =~ /(good|bad|perfect|excellent|worthless|dreary|horrible|great|nice|dreadful|awful|positive|negative)/;
    @words = split " ",$txt;
    $frequency{$item}++;
    for $w (@words) {
	$negscore{$item}++  if $negation{$w};
	$ampscore{$item}++  if $amplify{$w};
	$truscore{$item}++  if $truly{$w};
	last if $item eq $w;
    }
}
    print "$allines ==============================\n";
print "key\tfreq\tnegnorm\tampnorm\ttrunorm\n";
for $key (keys %frequency) {
    print "$key\t$frequency{$key}\t";#$negscore{$key}\t$ampscore{$key}\t";
    print                         $negscore{$key}/$frequency{$key}."\t".$ampscore{$key}/$frequency{$key}."\t".$truscore{$key}/$frequency{$key} if $frequency{$key} > 0;
    print "\n";
}

