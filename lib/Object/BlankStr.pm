package Object::BlankStr;

# VERSION

use overload q{""} => sub { "" };

sub new { bless(\$_[0], $_[0]) }

1;
# ABSTRACT: True-valued blank string object

=head1 SYNOPSIS

 use Object::BlankStr;

 die Object::BlankStr->new; # dies without printing anything


=head1 DESCRIPTION

Object::BlankStr is just an empty object which stringifies to "" (empty string).
Since it is an object, it has a boolean true value.

Object::BlankStr can be used where you want to print nothing (empty string) but
needs a true value. So far the only case I've encountered is die()-ing without
printing anything. If you just use 'die;' or 'die "";' Perl will print the
default "Died at ..." message. But if you say 'die Object::BlankStr->new;' Perl
will die without printing anything.

=cut
