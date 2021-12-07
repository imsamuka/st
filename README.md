st - simple terminal
--------------------
st is a simple terminal emulator for X which sucks less.


Features
------------
* Bold Text
* Scrollback
* Arbitrary terminal size ([anysize](https://st.suckless.org/patches/anysize/))
* Fallback Fonts
* Blinking Cursor
* Better ASCI drawing ([boxdraw](https://st.suckless.org/patches/boxdraw/))
* .desktop file
* Text isn't cut off on resizing
* XResources
* Vertically centered text
* External pipe
    * st-copyout: copy a command output (Ctrl + Shift + o)
* New terminal on CWD (Ctrl + Shift + Enter)
* Define working directory with `-d`
* Hardcoded Icon ([netwmicon](https://st.suckless.org/patches/netwmicon/))

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

