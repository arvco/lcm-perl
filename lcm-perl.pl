#!/usr/bin/perl


# Calculate the least common multiple of two numbers m and n by exploiting that
# lcm(m,n)*gcd(m,n) = m*n
# where gcd is the greatest common divisor 

use strict;
use warnings;

my $m = $ARGV[0];
my $n = $ARGV[1];

# Determine gcd by using the Euclidean algorithm
# https://en.wikipedia.org/wiki/Euclidean_algorithm

if ( $m < $n ) {
	our $a = $n;
	our $b = $m;
}
else {
    our $a = $m;
    our $b = $n;
}

my $r = $a % $b;
$a = $b;
$b = $r;

while ( $r != 0) {
	$r = $a % $b;
	$a = $b;
	$b = $r;
}

my $gcd = $a;

print "gcd($m,$n)=$a \n";

my $lcm = ($m * $n) / $gcd;

print "lcm($m,$n)=($m * $n) / $gcd = $lcm\n";


