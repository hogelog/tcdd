# tcdd

tcdd is useful cd command under tmux environment. This shell script inspired by [cdd (useful zsh script)](https://secon.dev/entry/20080218/1203303528/).


## Require
- bash or zsh
- sed, grep, sort

## Installation
### Manually
```console
$ git clone git://github.com/hogelog/tcdd.git
$ cp tcdd/tcdd some/bin/
$ echo 'eval $(tcdd init)' >> ~/.bash_profile
```

### Homebrew
```console
$ brew install hogelog/tap/tcdd
$ echo 'eval $(tcdd init)' >> ~/.bash_profile
```

## Usage
- `cdd` or `cdd list`: Show list
- `cdd <name>`: Change to named directory
- `cdd add <name>`: Add name

# Known issues
- tcdd override **cd** command, so it cannot install with any other tools that overrides cd (like a RVM)
