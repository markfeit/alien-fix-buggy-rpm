# alien-fix-buggy-rpm - Fix buggy Alien-generated RPMs

This program repackages

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

