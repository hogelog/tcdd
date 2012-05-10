tcdd
====

Tiny cdd is useful cd command under GNU Screen environment.
This shell script inspired by
[cdd (useful zsh script)](http://svn.coderepos.org/share/lang/zsh/cdd/cdd)


# Require
- bash or zsh
- Perl
- Ruby

# Install
    $ cd
    $ git clone git://github.com/hogelog/tcdd.git .cdd
    $ echo '. $HOME/.cdd/cdd.sh' >> .bashrc

# Usage
## Mutual Window Change Directory
    $ screen
    [0] $ cd /etc
    [1] $ cdd 0 # -> /etc
    [2] $ cd /usr/bin
## Show Current Directories
    [2] $ cdd
            0  /etc
            1  /etc
            2  /usr/bin
**[n] $** means **GNU Screen n-th WINDOW**

# Todo
- remove ruby requirement (some environment have no ruby environment)

# Issues
- tcdd override **cd** command, so it cannot install with any other
tools that overrides cd (like a RVM)
