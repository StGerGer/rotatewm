#!/usr/bin/perl

$usage="\nUsage: switchDesktop.pl offset\n";

$currentDesktop = `wmctrl -d | grep \\* | cut -d\\* -f 1`;
$maxDesktop = `wmctrl -d | wc -l`;

$newDesktop = $currentDesktop+$ARGV[0];

# Check for incorrect number of arguments
if($#ARGV > 1 || $#ARGV < 0) {
	print($usage);
}

# Checks for invalid desktop changes, then switches desktop
if ($newDesktop < $maxDesktop && $newDesktop >= 0) {
	system("wmctrl -s $newDesktop");
}
