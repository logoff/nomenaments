#!/usr/bin/perl

use strict;

my $name = shift @ARGV || die "\nLack of commit name\n\n";

foreach my $arg ( @ARGV ) {
  $name .= " $arg";
}

system("git add *.pl\n");
system("git add README\n");
system("git add LICENSE\n");
system("git commit -m '$name'\n");
