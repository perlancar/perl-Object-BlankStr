package Object::BlankStr;

# VERSION

use overload q{""} => sub { "" };

sub new { bless(\"$_[0]", $_[0]) }

1;
# ABSTRACT: Object which stringifies to empty string ("")

=head1 SYNOPSIS

 use Object::BlankStr;

 die Object::BlankStr->new; # dies without printing anything

 # checking exception the right way
 eval { die rand() > 0.5 ? Object::BlankStr->new : "blurg" };
 my $eval_err = $@;
 if ($eval_err || ref($eval_err)) {
    ...
 }

 # checking exception the WRONG way, object is stringified to "" and becomes
 # false
 eval { die rand() > 0.5 ? Object::BlankStr->new : "blurg" };
 if ($@) {
    ...
 }


=head1 DESCRIPTION

Object::BlankStr is just an empty object which stringifies to "" (empty string).
Since it is an object, it has a boolean true value (but be careful with
stringification, see SYNOPSIS).

So far the only case I've found this to be useful is for die()-ing without
printing anything. If you just use 'die;' or 'die "";' Perl will print the
default "Died at ..." message. But if you say 'die Object::BlankStr->new;' Perl
will die without printing anything.


=head1 SEE ALSO

L<Object::NulStr>

L<Object::SpaceBackStr>

=cut
