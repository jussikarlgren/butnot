# march 2017
open(CANONICALLIST, "<poles/en/canonicalpairs.list");
while (<CANONICALLIST>) {
    chomp;
    $canonical{$_} = 1;
}
close CANONICALLIST;


open(NEGLIST, "<poles/en/enpurenegation.list");
while (<NEGLIST>) {
    chomp;
    s/\'//;
    $negation{$_} = 1;
}
close NEGLIST;


open(NEGLIST, "<poles/en/ennegBingLiu.list");
while (<NEGLIST>) {
    chomp;
    s/\'//;
    $negative{$_} = 1;
}
close NEGLIST;

open(POSLIST, "<poles/en/enposBingLiu.list");
while (<POSLIST>) {
    chomp;
    s/\'//;
    $positive{$_} = 1;
}
close POSLIST;


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
    $seen = 0;
    $skipneg = 5;
    $negseen = 0;
    $negativeseen = 0;
    $positiveseen = 0;
    undef %canonicalseen;
    $negskip = 0;
    for $w (@words) {
	if ($w eq $item) {
	    $frequency{$item}++; 
	    $seen = 1;
	    if ($negskip) {$skipnegscore{$item}++; $negskip = 0;}
	    if ($negseen) {$prevnegscore{$item}++;}
	}
	if ($negation{$w}) {
	    if (! $seen) {$negskip = $skipneg;}
	    $negseen = 1;
	}	    
	if ($negskip > 0) {$negskip--;}
	if ($negative{$w}) {
	    $negativeseen = 1;
	}	    
	if ($negative{$w}) {
	    $positiveseen = 1;
	}	    
	if ($canonical{$w}) {
	    $canonicalseen{$w} = 1;
	}	    
    }
    if ($seen && $negseen) {$negscore{$item}++;}
    if ($seen && $negativeseen) {$negativescore{$item}++;}
    if ($seen && $positiveseen) {$positivescore{$item}++;}
    for $cc (keys %canonicalseen) {
	$canonicalscore{$cc}{$item}++;
    }
}
print "item\tfrequency\tneg\tprevneg\tscopeneg\tpositives\tnegatives\n";
for $key (keys %frequency) {
    print "$key\t$frequency{$key}\t$negscore{$key}\t$prevnegscore{$key}\t$skipnegscore{$key}\t$positivescore{$key}\t$negativescore{$key}\t";
    for $cc (keys %canonical) {
	print "$cc ";
	if ($canonicalscore{$cc}{$key}) {print "$canonicalscore{$cc}{$key}\t";} else {print "0\t";}
    }
print "\n";
}

