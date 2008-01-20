package MyElements::ListPersonResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.example.org/benchmark/' }

__PACKAGE__->__set_name('ListPersonResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %out_of :ATTR(:get<out>);

__PACKAGE__->_factory(
    [ qw(
        out
    ) ],
    {
        out => \%out_of,
    },
    {
        out => 'MyTypes::ArrayOfPerson',
    }
);

} # end BLOCK







} # end of BLOCK
1;

# __END__

=pod

=head1 NAME

MyElements::ListPersonResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
ListPersonResponse from the namespace http://www.example.org/benchmark/.

=head1 METHODS

=head2 new

 my $element = MyElements::ListPersonResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   out =>    { # MyTypes::ArrayOfPerson
     NewElement =>      { # MyTypes::Person
       PersonID =>        { # MyTypes::PersonID
         ID =>  $some_value, # int
       },
       Salutation =>  $some_value, # string
       Name =>  $some_value, # string
       GivenName =>  $some_value, # string
       DateOfBirth =>  $some_value, # date
       HomeAddress =>        { # MyTypes::Address
         Street =>  $some_value, # string
         ZIP =>  $some_value, # string
         City =>  $some_value, # string
         Country =>  $some_value, # string
         PhoneNumber => $some_value, # PhoneNumber
         MobilePhoneNumber => $some_value, # PhoneNumber
       },
       WorkAddress =>        { # MyTypes::Address
         Street =>  $some_value, # string
         ZIP =>  $some_value, # string
         City =>  $some_value, # string
         Country =>  $some_value, # string
         PhoneNumber => $some_value, # PhoneNumber
         MobilePhoneNumber => $some_value, # PhoneNumber
       },
       Contracts =>        { # MyTypes::ArrayOfContract
         Contract =>          { # MyTypes::Contract
           ContractID =>  $some_value, # long
           ContractName =>  $some_value, # string
         },
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

