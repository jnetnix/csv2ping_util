#!/usr/bin/perl

#
#Quick script to read ANY CSV, ping the address on the row, and put the results in the last column. 
#
use Net::Ping;

while (<STDIN>) {
  chomp;
  my @ping;
  s/^\"|\"$//g;
  my @fl = split(/\",\"|,/);
  foreach my $f (@fl) {
    if ($f =~ m/(^|\s+)(\d+\.\d+\.\d+\.\d+)(\s+|$)/) {
      push @ping, &pingit($2);
    }
  }
  push @ping, "PING-TEST" if (!@ping);
  print "\"" . join("\",\"",@fl) . "\",\"" . join("-",@ping) . "\"";
  print "\n";
}

sub pingit ($) {
  my ($ip) = (@_);
  my $ret = "DOWN";
  $p = Net::Ping->new("icmp");
  $ret = "UP" if $p->ping($ip);
  return($ret)
}
