use Test::More tests => 7;
use strict;
use warnings;
use SOAP::WSDL::XSD::Typelib::Builtin::anyURI;
my $anyURI = SOAP::WSDL::XSD::Typelib::Builtin::anyURI->new();
is $anyURI->get_value(), undef;
$anyURI = SOAP::WSDL::XSD::Typelib::Builtin::anyURI->new({});
is $anyURI->get_value(), undef;
ok $anyURI = SOAP::WSDL::XSD::Typelib::Builtin::anyURI->new({ value => 'isbn:1234567' });
is "$anyURI", "isbn:1234567", 'stringification';
ok $anyURI->set_value('http://example.org');
is "$anyURI", 'http://example.org', 'stringification';
$anyURI = SOAP::WSDL::XSD::Typelib::Builtin::anyURI->new();
ok $anyURI->isa('SOAP::WSDL::XSD::Typelib::Builtin::anySimpleType'), 'inheritance';