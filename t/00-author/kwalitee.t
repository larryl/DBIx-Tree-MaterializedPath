
use strict;
use warnings;

use Test::More;

unless ($ENV{TEST_AUTHOR})
{
    my $msg = 'Set $ENV{TEST_AUTHOR} to a true value to run.';
    plan(skip_all => $msg);
}

eval 'require Test::Kwalitee';
plan(skip_all => 'Test::Kwalitee not installed') if $@;

Test::Kwalitee->import();

