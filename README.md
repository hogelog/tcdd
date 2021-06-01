# cdd-tmux-bash

cdd-tmux-bash is useful cd command under tmux environment. This shell script inspired by [cdd (useful zsh script)](https://secon.dev/entry/20080218/1203303528/).


## Require
- bash or zsh
- sed, grep, sort

## Install
```console
$ git clone git://github.com/hogelog/cdd-tmux-bash.git
$ echo 'source path/to/cdd-tmux-bash/cdd' >> .bashrc
```

## Usage
### List directories
```console
$ cdd
0:/home/hogelog/repos/hogelog/tcdd
1:/home/hogelog/repos/hogelog/tcdd
2:/usr/local/etc
3:/
```

### Change directory
```console
$ cdd 1
cd /home/hogelog/repos/hogelog/tcdd
```

# Known ssues
- tcdd override **cd** command, so it cannot install with any other tools that overrides cd (like a RVM)
