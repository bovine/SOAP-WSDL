package SOAP::WSDL::XSD::Typelib::Builtin::anySimpleType;
use strict;
use warnings;
use Class::Std::Fast::Storable constructor => 'none', cache => 1;
use base qw(SOAP::WSDL::XSD::Typelib::Builtin::anyType);

my %value_of :ATTR(:get<value> :init_arg<value> :default<()>);

# don't you never dare to play with this !
our $___value = \%value_of;

## use $_[n] for speed - we get called zillions of times...
# and we don't need to return the last value...
sub set_value { $value_of{ ${ $_[0] } } = $_[1] }

# use $_[n] for speed.
# This is less readable, but notably faster.
#
# use postfix-if for speed. This is slightly faster, as it saves
# perl from creating a pad (variable context).
#
# The methods below may get called zillions of times, so
# every little statement matters...

sub serialize {
    no warnings qw(uninitialized);
    $_[1]->{ nil } = 1 if not defined $value_of{ ${$_[0]} };
    return join q{}
        , $_[0]->start_tag($_[1], $value_of{ ${$_[0]} })
        , $value_of{ ${$_[0]} }
        , $_[0]->end_tag($_[1]);
}

sub as_string :STRINGIFY {
    return $value_of { ${ $_[0] } };
}

sub as_bool :BOOLIFY {
    return $value_of { ${ $_[0] } };
}

my $ID_GENERATOR_REF = Class::Std::Fast::ID_GENERATOR_REF();
my $OBJECT_CACHE_REF = Class::Std::Fast::OBJECT_CACHE_REF();

sub new {
    my $self = pop @{ $OBJECT_CACHE_REF->{ $_[0] } };
    $self = bless \(my $o = Class::Std::Fast::ID()), $_[0]
        if not defined $self;
    $value_of{ $$self } = $_[1]->{ value }
        if (($#_) && exists $_[1]->{ value });
    return $self;
}

Class::Std::Fast::initialize();   # make :BOOLIFY overloading serializable

1;
