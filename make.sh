#!/bin/sh
set -e

# "When we build software, it's a good idea to have a reliable method
# for getting an executable from it. We want any two reconstructions
# starting from the same source to end up in the same result. That's
# just a basic intellectual premise."
#     -- Christian Queinnec, in _Lisp In Small Pieces_, p. 313

# This software is part of the SBCL system. See the README file for
# more information.
#
# This software is derived from the CMU CL system, which was
# written at Carnegie Mellon University and released into the
# public domain. The software is in the public domain and is
# provided with absolutely no warranty. See the COPYING and CREDITS
# files for more information.

# The value of SBCL_XC_HOST should be a command to invoke the
# cross-compilation Lisp system in such a way that it reads commands
# from standard input, and terminates when it reaches end of file on
# standard input. Some suitable values are:
#   "sbcl"        to use an existing SBCL binary as a cross-compilation host
#   "sbcl --sysinit /dev/null --userinit /dev/null"
#                 to use an existing SBCL binary as a cross-compilation host
#                 even though you have stuff in your initialization files
#                 which makes it behave in such a non-standard way that
#                 it keeps the build from working
#   "sbcl --disable-debugger"
#                 to use an existing SBCL binary as a cross-compilation host
#                 and tell it to handle errors as best it can by itself
#                 (probably by dying with an error code) instead of waiting
#                 endlessly for a programmer to help it out with input
#                 on *DEBUG-IO*
#   "lisp -batch" to use an existing CMU CL binary as a cross-compilation host
#   "lisp -noinit -batch"
#                 to use an existing CMU CL binary as a cross-compilation host
#                 when you have weird things in your .cmucl-init file
#   "openmcl --batch"
#                 to use an OpenMCL binary as a cross-compilation host
#   "clisp"
#                 to use a CLISP binary as a cross-compilation host
#
# FIXME: Make a more sophisticated command line parser, probably
# accepting "sh make.sh --xc-host foolisp" instead of the
# the present "sh make.sh foolisp".
# FIXME: Tweak this script, and the rest of the system, to support
# a second bootstrapping pass in which the cross-compilation host is
# known to be SBCL itself, so that the cross-compiler can do some
# optimizations (especially specializable arrays) that it doesn't
# know how to implement how in a portable way. (Or maybe that wouldn't
# require a second pass, just testing at build-the-cross-compiler time
# whether the cross-compilation host returns suitable values from
# UPGRADED-ARRAY-ELEMENT-TYPE?)

LANG=C
LC_ALL=C
export LANG LC_ALL

build_started=`date`
echo "//starting build: $build_started"

if [ "$OSTYPE" = "cygwin" -o "$OSTYPE" = "msys" ] ; then
    DEVNULL=NUL
else
    DEVNULL=/dev/null
fi
# The classic form here was to use --userinit $DEVNULL --sysinit
# $DEVNULL, but that doesn't work on Win32 because SBCL doesn't handle
# device names properly.  We still need $DEVNULL to be NUL on Win32
# because it's used elsewhere (such as canonicalize-whitespace), so we
# need an alternate solution for the init file overrides.  It turns
# out that version.lisp-expr has no side effects from evaluation, so
# we may as well use that.
SBCL_XC_HOST="${1:-sbcl --disable-debugger --userinit version.lisp-expr --sysinit version.lisp-expr}"
export DEVNULL
export SBCL_XC_HOST
echo //SBCL_XC_HOST=\"$SBCL_XC_HOST\"

. ./find-gnumake.sh
find_gnumake

# If you're cross-compiling, you should probably just walk through the
# make-config.sh script by hand doing the right thing on both the host
# and target machines.
sh make-config.sh

# Enforce the source policy for no bogus whitespace
tools-for-build/canonicalize-whitespace

# The make-host-*.sh scripts are run on the cross-compilation host,
# and the make-target-*.sh scripts are run on the target machine. In
# ordinary compilation, we just do these phases consecutively on the
# same machine, but if you wanted to cross-compile from one machine
# which supports Common Lisp to another which does not (yet:-) support
# Common Lisp, you could do something like this:
#   Create copies of the source tree on both the host and the target.
#   Read the make-config.sh script carefully and emulate it by hand
#     on both machines (e.g. creating "target"-named symlinks to
#     identify the target architecture).
#   On the host system:
#     SBCL_XC_HOST=<whatever> sh make-host-1.sh
#   Copy src/runtime/genesis/*.h from the host system to the target
#     system.
#   On the target system:
#     sh make-target-1.sh
#   Copy src/runtime/sbcl.nm and output/stuff-groveled-from-headers.lisp
#     from the target system to the host system.
#   On the host system:
#     SBCL_XC_HOST=<whatever> sh make-host-2.sh
#   Copy output/cold-sbcl.core from the host system to the target system.
#   On the target system:
#     sh make-target-2.sh
#     sh make-target-contrib.sh
# Or, if you can set up the files somewhere shared (with NFS, AFS, or
# whatever) between the host machine and the target machine, the basic
# procedure above should still work, but you can skip the "copy" steps.
time sh make-host-1.sh
time sh make-target-1.sh
time sh make-host-2.sh
time sh make-target-2.sh
time sh make-target-contrib.sh

NCONTRIBS=`find contrib -name Makefile -print | wc -l`
NPASSED=`find contrib -name test-passed -print | wc -l`
echo
echo "The build seems to have finished successfully, including $NPASSED (out of $NCONTRIBS)"
echo "contributed modules. If you would like to run more extensive tests on"
echo "the new SBCL, you can try:"
echo
echo "  cd tests && sh ./run-tests.sh"
echo
echo "  (All tests should pass on x86/Linux, x86/FreeBSD4, and ppc/Darwin. On"
echo "  other platforms some failures are currently expected; patches welcome"
echo "  as always.)"
echo
echo "To build documentation:"
echo
echo "  cd doc/manual && make"
echo
echo "To install SBCL (more information in INSTALL):"
echo
echo "  sh install.sh"

build_finished=`date`
echo
echo "//build started:  $build_started"
echo "//build finished: $build_finished"
