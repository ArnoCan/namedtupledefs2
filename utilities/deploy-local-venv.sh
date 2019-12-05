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
		printf "#                        *** workon %-15s ***                              #\n" "$v"
		echo "#------------------------------------------------------------------------------------#"
		echo "#"
		echo
	else
		echo "# install into virtualenv: $v"
	fi
	if((QUIET==0));then
		. ~/venv/$v/bin/activate
		python setup.py install
	else
		exec 7>&1
		exec 6>&2

		exec  >> $OUTPUT
		exec 2>&1

		. ~/venv/$v/bin/activate
		python setup.py install #>/dev/null		

		exec 1>&7 7>&-
		exec 2>&6 6>&-

	fi
done

cat << EOF

Protocol see: OUTPUT : $OUTPUT

EOF
