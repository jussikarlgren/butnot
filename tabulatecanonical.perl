open(AMPLIST, "<poles/en/enamplify242.list");
while (<AMPLIST>) {
    chomp;
    $amplify{$_} = 1;
}
close AMPLIST;
open(NEGLIST, "<poles/en/ennegation107.list");
while (<NEGLIST>) {
    chomp;
    s/\'//;
    $negation{$_} = 1;
}
close NEGLIST;
open(HEDGELIST, "<poles/en/enskeptic702.list");
while (<HEDGELIST>) {
    chomp;
    $hedge{$_} = 1;
}
close HEDGELIST;
%seem = ("seem",1,"appear",1);
%seemed = ("seemed",1,"appeared",1);
%here = ();
%now = ();
$but{"but"} = 1;
$but{"however"} = 1;
$lines = 0;
$alllines = 0;
while (<>) {
    $lines++;
    $alllines++;
    s/™//g;
    s/\\//g;
    ($item,$txt) = split "\t";
    next if length $item < 2;
    @words = split " ",$txt;
    $frequency{$item}++;
    for $w (@words) {
	$lyscore{$item}++ if (substr($w, -2) eq "ly");
	$negscore{$item}++  if $negation{$w};
	$butscore{$item}++  if $but{$w};
	$hedscore{$item}++ if $hedge{$w};
	$ampscore{$item}++ if $amplify{$w};
	$seemscore{$item}++ if $seem{$w};
	$seemedscore{$item}++ if $seemed{$w};
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
