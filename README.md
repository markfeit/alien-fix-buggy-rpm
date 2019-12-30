# alien-fix-buggy-rpm - Fix buggy Alien-generated RPMs

This program repackages RPMs created by the
[Alien](https://sourceforge.net/projects/alien-pkg-convert/) package
format converter which appear to have lost its mainteiner.

Maintenance was discontinued without having applied a fix for a
[bug](https://sourceforge.net/p/alien-pkg-convert/tickets/1/) that
causes converted RPMs to contain all possible directory path parts for
files installed.  (E.g., if installing `/usr/lib/foo.a`, Alien adds
`/usr` and `/usr/lib` to the RPM spec's `%files` section, causing
conflicts with packages like `filesystem`.)


## Prerequisites

Your system must have the following installed:

 * A POSIX-compliant shell and command-line utilities.
 * RPMBuild (Available in the `rpm` package on Red Hat and Debian derivatives.)


To run a test on the program (this step is optional), your system must
have the following:

 * GNU Make
 * cURL



## Build and Installation

No build is required; the script will run as-delivered.

A test run of the script can be executed by running `make test`.  Note
that this test depends on the continued existence of a particular
version of VueScan at the URL at the top of the `Makefile`.


## Invocation

To run the script, execute `alien-fix-buggy-rpm PATH-TO-BAD-RPM`.

The corrected RPM is placed in the same directory as the original,
named according to the convention used by Red Hat (e.g.,
`foomatic-1.2.3-4.x86_64.rpm`).

