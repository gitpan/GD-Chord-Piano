use strict;
use Test::More tests => 7;
use GD::Chord::Piano;

my $im = GD::Chord::Piano->new;

is(
    $im->generate('C', (0,4,7))->png,
    $im->chord('C')->png,
    "C"
);
is(
    $im->generate('Cm', (0,3,7))->png,
    $im->chord('Cm')->png,
    "Cm"
);
is(
    $im->generate('C7', (0,4,7,10))->png,
    $im->chord('C7')->png,
    "C7"
);
is(
    $im->generate('C7(9,13)', (0,4,7,10,14,17,21))->png,
    $im->chord('C7(9,13)')->png,
    "C7(9,13)"
);


is(
    $im->gen('D7', (2,6,9,12))->png,
    $im->chord('D7')->png,
    "D7"
);


is(
    $im->generate('B7(9,13)', (11,13,15,16,18,20,21))->png,
    $im->chord('B7(9,13)')->png,
    "B7(9,13)"
);


is(37, scalar(@{$im->all_chords}), "all_chord");

