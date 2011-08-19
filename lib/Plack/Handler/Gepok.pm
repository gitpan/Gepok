package Plack::Handler::Gepok;

use 5.010;
use strict;
use warnings;

use Gepok;

sub new {
    my $class = shift;
    my $self = bless { @_ }, $class;

    $self->{daemonize} //= 0;

    # translate different option names
    if ($self->{port}) {
        $self->{http_ports} //= [($self->{host} // "") . ":" . $self->{port}];
        delete $self->{port};
        delete $self->{host};
    }
    $self;
}

sub run {
    my($self, $app) = @_;
    Gepok->new(%$self)->run($app);
}

1;



=pod

=head1 NAME

Plack::Handler::Gepok

=head1 VERSION

version 0.12

=head1 SYNOPSIS

  plackup -s Gepok

=head1 NAME

Plack::Handler::Gepok - Plack adapter for Gepok

=head1 SEE ALSO

L<Gepok>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__



