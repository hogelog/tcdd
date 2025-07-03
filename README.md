# tcdd

tcdd is useful cd command under tmux environment. This shell script inspired by [cdd (useful zsh script)](https://secon.dev/entry/20080218/1203303528/).


## Require
- bash (>= 4.0)
- tmux

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

# Compatibility
- tcdd now uses PROMPT_COMMAND instead of overriding cd command
- Compatible with tools that override cd command (mise, direnv, etc.)
