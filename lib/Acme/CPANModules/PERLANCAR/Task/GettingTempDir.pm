package Acme::CPANModules::PERLANCAR::Task::GettingTempDir;

# DATE
# VERSION

our $LIST = {
    summary => 'Getting system-wide temporary directory in a portable way',
    description => <<'_',

There's the good ol' <pm:File::Spec> which has a `tmpdir` function. On Unix it
looks at `TMPDIR` environment variable before falling back to `/tmp`.
<pm:File::Temp> uses this for its `tempdir` when a template is not specified.

Then there's <pm:File::Util::Tempdir> which tries a little harder. On Unix, its
`get_tempdir` will look at `TMPDIR`, then also `TEMPDIR`, `TMP`, `TEMP`. If none
of those are set, it will return the first existing directory from the list:
`/tmp`, `/var/tmp`. If everything fails, will die.

File::Util::Tempdir also provides `get_user_tempdir` which returns a
user-private temporary directory, which can be useful if you want to create
temporary file with predetermined names. It will return temporary directory
pointed by `XDG_RUNTIME_DIR` (e.g. `/run/user/1000`) or, if unavailable, will
create a subdirectory under the world-writable temporary directory (e.g.
`/tmp/1000`).

_
    tags => ['task'],
    entries => [
        {
            module=>'File::Spec',
        },
        {
            module=>'File::Util::Tempdir',
        },
    ],
};

1;
# ABSTRACT:
