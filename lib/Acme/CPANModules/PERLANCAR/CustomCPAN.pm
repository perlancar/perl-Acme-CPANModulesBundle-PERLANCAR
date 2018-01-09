package Acme::CPANModules::PERLANCAR::CustomCPAN;

# DATE
# VERSION

our $LIST = {
    summary => 'Creating your own CPAN-like repository',
    description => <<'_',

You can create a CPAN-like repository which contains your own modules. Look at
the modules in this list to see what tools you can use to do this.

Keywords: DarkPAN

_
    entries => [
        {
            module=>'CPAN::Mini::Inject',
            description => <<'_',

If you just want to add one to a few of your own modules to your own CPAN, you
can start with a regular CPAN (or mini CPAN) mirror, then inject your modules
into it using this module.

_
        },
        {
            module=>'OrePAN',
            description => <<'_',

With this tool, you can create a CPAN-like repository from scratch, by adding
your modules one at a time.

_
        },
        {
            module=>'WorePAN',
            description => <<'_',

A flavor of OrePAN that works under Windows.

_
        },
        {
            module=>'OrePAN2',
            description => <<'_',

The next generation of OrePAN, although I personally still use OrePAN (version
1).

_
        },
        {
            module=>'CPAN::Mirror::Tiny',
            description => <<'_',

Like OrePAN/OrePAN2/CPAN::Mini::Inject, but the goal is not to depend on XS
modules (thus, the use of HTTP::Tinyish which uses curl/wget to download https
pages instead of LWP).

_
        },
        {
            module => 'Pinto',
            description => <<'_',

Pinto allows you to create custom CPAN-like repository of Perl modules with
features like stacking, version pinning, and so on.

_
        },
        {
            module => 'App::lcpan',
            description => <<'_',

Not a CPAN-like repository creator/builder, but once you have your CPAN-like
repository, you can also index it like you would a regular CPAN mirror/mini
mirror using this tool.

_
        },
    ],
};

1;
# ABSTRACT:

=head1 append:SEE ALSO

L<Acme::CPANModules::PERLANCAR::LocalCPANMirror>
