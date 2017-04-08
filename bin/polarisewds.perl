open(NEGLIST, "<poles/en/ennegBingLiu.list");
while (<NEGLIST>) {
    chomp;
    s/\'//;
    $neg{$_} = 1;
}
close NEGLIST;
open(POSLIST, "<poles/en/enposBingLiu.list");
while (<POSLIST>) {
    chomp;
    s/\'//;
    $pos{$_} = 1;
}
close POSLIST;

while (<>) {
    @items = split;
    chop;
    print;
    print "\t";
    print "pos" if $pos{$items[0]};
    print "neg" if $neg{$items[0]};
    print "\n";
    }
