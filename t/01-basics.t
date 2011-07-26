#!perl

use 5.010;
use strict;
use warnings;
use Test::More 0.96;

use Object::BlankStr;

my $str = Object::BlankStr->new;

ok($str, "object is true-valued");
is("$str", " \b", "object stringifies to \" \\b\"");

done_testing();
