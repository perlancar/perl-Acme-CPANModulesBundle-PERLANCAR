package Acme::CPANModules::PERLANCAR::Task::AliasingModuleName;

# DATE
# VERSION

our $LIST = {
    summary => 'Aliasing a (long) module name to another (shorter) name',
    tags => ['task'],
    entries => [
        {
            module=>'Package::Alias',
        },
        {
            module=>'alias::module',
            description => <<'_',

I used to use <pm:Package::Alias> but later I created <pm:alias::module> that is
more lightweight (avoids using <pm:Carp>) and has a simpler interface.

_
        },
        {
            module=>'abbreviation',
        },
    ],
};

1;
# ABSTRACT:
