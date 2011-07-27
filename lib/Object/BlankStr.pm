package Object::BlankStr;

# VERSION

use overload q{""} => sub { "" };

sub new { bless(\$_[0], $_[0]) }

1;
# ABSTRACT: Blank string object

=head1 SYNOPSIS

 use Object::BlankStr;

 die Object::BlankStr->new; # dies without printing anything


=head1 DESCRIPTION

Object::BlankStr is just an empty object which stringifies to "" (empty string).
Since it is an object, it has a boolean true value *in some cases*. By *in some
cases* it means that when object stringification occurs before comparison, the
truth value becomes false because Perl regards empty string as false.

So far the only case I've found this to be useful is for die()-ing without
printing anything. If you just use 'die;' or 'die "";' Perl will print the
default "Died at ..." message. But if you say 'die Object::BlankStr->new;' Perl
will die without printing anything.

=cut
