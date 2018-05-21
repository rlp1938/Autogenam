# AUTOGENAM


## NAME

**autogenam** — Generates files needed by autotools.

## SYNOPSIS

**autogenam** \[option] *program_name* main_src_name.c \[other.c|h ...]

## DESCRIPTION

The  program  does three tasks, it hardlinks most of the files needed
by autotools in the current directory. Then it generates the  AUTHORS
file  followed  by Makefile.am. If the -m option has been selected it
inserts the man_MAN macro.


## Options

+ **-h**  
Prints brief usage information then quits.

+ **-m**  
requires an argument being the manpage file name.

+ **-A**  
requires an argument being the filename that lists the other
conributing authors.

+ **-d**  
a file to install in /usr/local/share/*program_name*

+  **-x**  
files to 'EXTRA_BUILD'. You invoke this once for each file or use
a quote protected space separated list of filenames. Do not include
any man page input, this is handled automatically.

## AUTHOR

Bob.Parker@programmer.net

## DATE

2018-05-22

## SEE ALSO

**autoconf**(1), **automake**(1), **autoscan**(1)
