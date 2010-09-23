package Moose::Meta::Method::Accessor::Native::Number::mul;

use strict;
use warnings;

our $VERSION = '1.13';
$VERSION = eval $VERSION;
our $AUTHORITY = 'cpan:STEVAN';

use base 'Moose::Meta::Method::Accessor::Native::Writer';

sub _minimum_arguments {1}
sub _maximum_arguments {1}

sub _potential_value {
    my ( $self, $slot_access ) = @_;

    return "$slot_access * \$_[0];";
}

sub _inline_optimized_set_new_value {
    my ( $self, $inv, $new, $slot_access ) = @_;

    return "$slot_access *= \$_[0];";
}

1;