/*
 * These functions emulate a small subset of the dlopen / dlsym
 * functionality under Darwin's Mach-O dyld system.
 */

/*
 * This software is part of the SBCL system. See the README file for
 * more information.
 *
 * This software is derived from the CMU CL system, which was
 * written at Carnegie Mellon University and released into the
 * public domain. The software is in the public domain and is
 * provided with absolutely no warranty. See the COPYING and CREDITS
 * files for more information.
 */

#ifndef PPC_DARWIN_DLSHIM_H
#define PPC_DARWIN_DLSHIM_H

#define RTLD_LAZY 1
#define RTLD_NOW 2
#define RTLD_GLOBAL 0x100

#endif /* PPC_DARWIN_DLSHIM_H */
