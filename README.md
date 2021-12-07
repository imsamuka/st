st - simple terminal
--------------------
st is a simple terminal emulator for X which sucks less.


Requirements
------------
In order to build st you need the Xlib header files.
**st-copyout** depends on `dmenu` and `xclip`


Installation
------------
Edit config.mk to match your local setup (st is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install st (if
necessary as root):

    make uninstall
    make clean install
    make clean



If you did not install st with `make clean install`, you must compile
the st terminfo entry with the following command:

    tic -sx st.info

See the man page for additional details.

Patch Sources
-------
* suckless - https://st.suckless.org/patches/
* nimaipatel - https://github.com/nimaipatel/st
* feloniousBonk - https://github.com/feloniousBonk/st-bonk
* siduck - https://github.com/siduck/st
* gnotclub - https://github.com/gnotclub/xst

Credits
-------

* Based on Aurélien APTEL <aurelien dot aptel at gmail dot com> bt source code.

