#! /usr/bin/bash

# . ~/.bashrc
# . ~/.bash_profile

QUIET=${QUIET:-1}


PROJNAME=$(pwd)
PROJNAME=${PROJNAME##*/}
OUTPUT=/tmp/venv_install_${PROJNAME}

VENVS=''
VENVS+=" 2.7.13 "
VENVS+=" 2.7.14 "
# VENVS+=" 3.3.2 "
# VENVS+=" 3.4.6 "
VENVS+=" 3.5.2 "
VENVS+=" 3.5.3 "
VENVS+=" 3.6.2 "
VENVS+=" 3.6.4 "
VENVS+=" 3.6.5 "
VENVS+=" 3.7.0 "

for v in $VENVS;do
	if((QUIET!=1));then
		echo
		echo "#"
		echo "#------------------------------------------------------------------------------------#"
		printf "#                        *** tests  %-15s ***                              #\n" "$v"
		echo "#------------------------------------------------------------------------------------#"
		echo "#"
		echo
	else
		echo "# run tests on virtualenv: $v"
	fi
	. ~/venv/$v/bin/activate
#	export PYTHONPATH=$PWD:$PWD/tests
	python setup.py tests
done

cat << EOF

Protocol see: OUTPUT : $OUTPUT

EOF
