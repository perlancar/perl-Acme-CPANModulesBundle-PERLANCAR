package Acme::CPANModules::PERLANCAR::MyRetired;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'List of my retired modules',
    description => <<'_',

This is a list of some of the modules which I wrote but have now been retired
and purged from CPAN, for various reasons but mostly because they are no longer
necessary. I've purged/retired more modules than these (mostly failed
experiments) but they are not worth mentioning here because nobody else seems to
have used them.

Note that you can always get these retired modules from BackPAN or GitHub (I
don't purge most of the repos) if needed.

_
    entries => [
        {
            module => 'Data::Schema',
            description => <<'_',

I wrote <pm:Data::Sah> which superseded this module since 2012.

_
            alternate_modules => ['Data::Sah'],
        },
        {
            module => 'Carp::Always::Dump',
            description => <<'_',

This module is like <pm:Carp::Always>, but dumps complex arguments instead of
just printing `ARRAY(0x22f8160)` or something like that.

Superseded by <pm:Devel::Confess>, which can do color
(<pm:Carp::Always::Color>), dumps (<pm:Carp::Always::Dump>), as well as a few
other tricks, all in a single package.

_
            alternate_modules => ['Devel::Confess'],
        },
        {
            module => 'Passwd::Unix::Alt',
            description => <<'_',

I first wrote <pm:Passwd::Unix::Alt> (a fork of <pm:Passwd::Unix>) to support
shadow passwd/group files, but later abandoned this fork due to a couple of
fundamental issues and later wrote a clean-slate attempt
<pm:Unix::Passwd::File>.

_
            alternate_modules => ['Unix::Passwd::File'],
        },
        {
            module => 'Module::List::WithPath',
            description => <<'_',

Superseded by <pm:Module::List::More>.

_
            alternate_modules => ['Module::List::More'],
        },
        {
            module => 'App::CreateSparseFile',
            description => <<'_',

I didn't know about the `fallocate` command.

_
            'x.date' => '2017-07-18',
        },
        {
            module => 'Log::Any::App',
            description => <<'_',

I've written <pm:Log::ger::App> to be its successor.

_
            'x.date' => '2017-09-08',
            alternate_modules => ['Log::ger::App'],
        },
        {
            module => 'Package::MoreUtil',
            description => <<'_',

I didn't know about <pm:Package::Stash>, which does things more properly and
performantly. But I've spun routines not yet covered by Package::Stash to
<pm:Package::Util::Lite>.

_
            'x.date' => '2019-01-06',
            alternate_modules => ['Package::Stash', 'Package::Util::Lite'],
        },
    ],
};

1;
# ABSTRACT:
