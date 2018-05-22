#!/bin/bash
#
# build.sh - script to build a C program, options allow optimisation
#            or build for `gdb`.


# set defaults
debug=1;
verbose=0;

# write actual usage
usage () {
	echo;
	echo "./build.sh [option]"; echo;
	echo options;
	echo -h print help message and exit;
	echo '-d generate debug code (default)';
	echo '-o generate optimised code (O2)';
}

# options string
options=':ohd'
# the leading ':' in options string is required for the errors cases.

while getopts $options option
do
	case $option in
		o  ) debug=0;;
		d  ) debug=1;;
		h  ) usage; exit;;
		\? ) echo "Unknown option: -$OPTARG" >&2; exit 1;;
		:  ) echo "Missing option argument for -$OPTARG" >&2; exit 1;;
		*  ) echo "Unimplemented option: -$OPTARG" >&2; exit 1;;
	esac
done

if [ $debug == 1 ]
then
	gcc -Wall -Wextra -g -O0 -c -D_GNU_SOURCE=1 autogenam.c
else
	gcc -Wall -Wextra -O2 -c -D_GNU_SOURCE=1 autogenam.c
fi

# link stage
gcc autogenam.o -o autogenam
rm *.o
