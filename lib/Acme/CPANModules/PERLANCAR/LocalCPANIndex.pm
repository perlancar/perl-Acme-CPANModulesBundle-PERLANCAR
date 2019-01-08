package Acme::CPANModules::PERLANCAR::LocalCPANIndex;

# DATE
# VERSION

our $LIST = {
    summary => 'Creating an index against local CPAN mirror',
    description => <<'_',

Since CPAN repository index is just a couple of text files (currently: list of
authors in `authors/01mailrc.txt.gz` and list of packages in
`modules/02packages.details.txt.gz`), to perform more complex or detailed
queries additional index is often desired. The following modules accomplish
that.

_
    entries => [
        {
            module=>'App::lcpan',
            description => <<'_',

In addition to downloading a CPAN mini mirror (using <pm:CPAN::Mini>), this
utility also indexes the package list and distribution metadata into a SQLite
database so you can perform various queries, like list of
modules/distributions/scripts of a CPAN author, or related modules using
cross-mention information on modules' PODs, or various rankings.

_
        },
        {
            module=>'CPAN::SQLite',
            description => <<'_',

This module parses the two CPAN text file indexes (`authors/01mailrc.txt.gz` and
`modules/02packages.details.txt.gz`) and puts the information into a SQLite
database. This lets you perform queries more quickly without reparsing the text
files each time. But it does not parse distribution metadata so you don't get
additional querying capability like dependencies.

_
        },
    ],
};

1;
# ABSTRACT:

=head1 append:SEE ALSO

L<Acme::CPANModules::PERLANCAR::LocalCPANMirror>

L<Acme::CPANModules::PERLANCAR::CustomCPAN>
