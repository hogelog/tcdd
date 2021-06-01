# tcdd

tcdd is useful cd command under tmux environment. This shell script inspired by [cdd (useful zsh script)](https://secon.dev/entry/20080218/1203303528/).


## Require
- bash or zsh
- sed, grep, sort

## Install
```console
$ git clone git://github.com/hogelog/tcddbash.git
$ echo 'source path/to/tcdd/cdd' >> .bashrc
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

# Known issues
- tcdd override **cd** command, so it cannot install with any other tools that overrides cd (like a RVM)
