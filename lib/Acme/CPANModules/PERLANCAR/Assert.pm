package Acme::CPANModules::PERLANCAR::Assert;

# DATE
# VERSION

our $LIST = {
    summary => 'Assertion',
    description => <<'_',

Assertion is a check statement that must evaluate to true or it will abort
program's execution. It is useful during development/debugging:

    assert("there must be >3 arguments", sub { @args > 3 });

In production code, compilers ideally do not generate code for assertion
statements so they do not have any impact on runtime performance.

In the old days, you only have this alternative to do it in Perl:

    assert(...) if DEBUG;

where `DEBUG` is a constant subroutine, declared using:

    use constant DEBUG => 0;

or:

    sub DEBUG() { 0 }

The perl compiler will optimize away and remove the code entirely when `DEBUG`
is false. But having to add `if DEBUG` to each assertion is annoying and
error-prone.

Nowadays, you have several alternatives to have a true, C-like assertions. One
technique is using <pm:Devel::Declare> (e.g. <pm:PerlX::Assert>). Another technique is
using <pm:B::CallChecker> (e.g. <pm:Assert::Conditional>).

_

        entries => [
            {module=>'Assert::Conditional'},
            {module=>'PerlX::Assert'},
            {module=>'Devel::Assert'},
            #{module=>'assertions'}, # this module doesn't work now, it uses an experimental feature available on 5.9.x which finally removed before 5.10.
        ],
    };

1;
# ABSTRACT:
