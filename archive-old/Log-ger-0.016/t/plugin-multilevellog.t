#!perl

use strict;
use warnings;
use Test::More 0.98;

use Log::ger::Util;

use vars '$str';
use Log::ger::Output 'String', string => \$str;

package My::P1;
use Log::ger::Plugin 'MultilevelLog';
use Log::ger;

sub x {
    log(3, "warnmsg");
    log(5, "debugmsg");
}

package main;

$str = "";
My::P1::x();
is($str, "warnmsg\n");

done_testing;
