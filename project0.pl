#!/usr/bin/perl
# transliterate.pl

use strict; use warnings;

my $text = "these are letters: abcdef, and these are numbers, 123456";


$text =~ tr/a/b/; # changes any occurrence of ‘a’ to ‘b’
$text =~ tr/bs/at/; # the letter ‘b’ becomes ‘a’, and ‘s’ becomes ‘t’
$text =~ tr/123/321/; # 1 becomes 3, 2 stays as 2, 3 becomes 1
$text =~ tr/abc/ABC/; # capitalize the letters a, b, and c
$text =~ tr/ABC/X/; # any ‘A’, ‘B’, or ‘C’ will become an X
$text =~ tr/de/DE/; # incorrect use, only ‘d’ will be changed to ‘D’
$text =~ tr [abcdefgh]
	[hgfedcba]; # semicolon is here and not on line 13
$text =~ tr[abcdefgh][hgfedcba]; # whitespace removed
print $text."\n";
my $sequence = "AACTAGCGGAATTCCGACCGT";
my $g_count = ($sequence =~ tr/G/G/);
print "The letter G occurs $g_count times in $sequence\n";
