package Acme::CPANModules::PERLANCAR::CLIWithUndo;

# DATE
# VERSION

our $LIST = {
    summary => 'CLI utilities with undo feature',
    entries => [
        {
            module => 'App::trash::u', scripts => ['trash-u'],
        },
        {
            module => 'App::perlmv::u', scripts => ['perlmv-u'],
        },
    ],
};

1;
# ABSTRACT:
