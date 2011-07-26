package Object::BlankStr;

# VERSION

use overload q{""} => sub { " \b" };

sub new { bless(\$_[0], $_[0]) }

1;
# ABSTRACT: True-valued 'blank' string object

=head1 SYNOPSIS

 use Object::BlankStr;

 die Object::BlankStr->new; # dies without printing anything


=head1 DESCRIPTION

Provides an object which stringifies to a 'blank' string (actually " \b", that
is, space followed by a backspace so when printed emulates nothing). Since this
is an object, it has a true value.

This is used for example when throwing exception with die(). You don't want to
print anything ("") but you need it to be a true value because otherwise Perl
will use "Died at ..." as the default error message.

=cut
