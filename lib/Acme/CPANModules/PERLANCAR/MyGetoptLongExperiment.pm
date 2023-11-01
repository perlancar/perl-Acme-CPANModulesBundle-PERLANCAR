package Acme::CPANModules::PERLANCAR::MyGetoptLongExperiment;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'List of my experiments writing Getopt::Long replacements/alternatives',
    description => <<'_',

Most of these modules provide a <pm:Getopt::Long>-compatible interface, but they
differ in some aspect: either they offer more features (or less).

_
    entries => [
        {module => 'Getopt::Long::Less'},
        {module => 'Getopt::Long::EvenLess'},
        {module => 'Getopt::Long::More'},
        {module => 'Getopt::Long::Complete'},

        {module => 'Getopt::Long::Subcommand'},

        {module => 'Getopt::Panjang'},
    ],
};

1;
# ABSTRACT:
