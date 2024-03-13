# dotfiles
A repository for config files for various software tools for both remote machines and local machines.
Additional installed packages for EL9
 - TMUX 3.3
 - - libevent
 - - ncurses
    These require manual builds from github, see below for details
 - ripgrep
    Fortunately EL9 has rust installed so we can build it from scratch

Local builds are put into either .local or local. Both are added to the path variable in
the .bashrc and .zshrc

## Notes for LXPLUS

### Installing TMUX 3.3
tmux is a very old version, v1.8 (Aug 2023). This needs to be upgraded to continue with the tmuxconfig file.

Installation has generally been from the guide here: https://frankenthal.dev/post/tmux-on-lxplus\_pt0/
with an additional stack overflow discussion here: https://superuser.com/questions/1259140/how-to-install-tmux-locally-without-root-access
 
If the lxplus system needs to get restored to system defaults, the instructions for installing a newer version of tmux can be found here: https://github.com/tmux/tmux/wiki/Installing

It is necessary to build both libevent and ncurses. Instructions can be found on the tmux installation page.

Notes: tmux may need to be rebuilt in accordance with the github page instead of the guide linked above.


#### Installation message from libevent

Libraries have been installed in:
   /afs/cern.ch/user/r/rbate/local/lib

\----------------------------------------------------------------------
If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the \`-LLIBDIR'
flag during linking and do at least one of the following:
   \- add LIBDIR to the \`LD\_LIBRARY\_PATH' environment variable
     during execution
   \- add LIBDIR to the \`LD\_RUN\_PATH' environment variable
     during linking
   \- use the \`-Wl,-rpath -Wl,LIBDIR' linker flag
   \- have your system administrator add LIBDIR to \`/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
\----------------------------------------------------------------------

## Installation notes from Conda
conda has been installed with the ./setup\_conda.sh from within the salt framework.
lxplus seems to already have a base version of conda installed but this is limited
because it is not in a folder with the correct ownership for users to modify.
conda is installed in ~. Therefore, it was necessary to change the CONDA\_ROOT variable
from the base installation on lxplus to the user install located in ~. Therefore
> export CONDA\_ROOT=~/conda
or wherever the local conda installation exists.

## Installation notes from ripgrep
command is rg

> git clone https://github.com/BurntSushi/ripgrep
> cd ripgrep
> git fetch --all --tags --prune
> git checkout tags/13.0.0 -b master\_v13
> cargo build --release
> ./target/release/rg --version
> cargo test --all

Notes:
 - One test failed, not sure why
 - v13 had to be build because the newest version requires a newer version
of rust than what lxplus el9 currently has

