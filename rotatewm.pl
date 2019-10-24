#!/usr/bin/perl

$usage="\nUsage: switchDesktop.pl offset\n";

$currentDesktop = `wmctrl -d | grep \\* | cut -d\\* -f 1`;
$maxDesktop = `wmctrl -d | wc -l`;

$newDesktop = $currentDesktop+$ARGV[0];

if($#ARGV > 1 || $#ARGV < 0) {
	print($usage);
}

if ($ARGV[0] == 0) {
	exit;
}

if ($newDesktop < $maxDesktop && $newDesktop >= 0) {
	system("wmctrl -s $newDesktop");
}
