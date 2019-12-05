#
# control variables:
#
#    TARGET
#    WINTARGET
#    DBG

WINTARGET=" " # deactivates windows - scp

SCP_PARTS=""

# platformids
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/platformids"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/README.md"

# pysourceinfo
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/sourceinfo"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/README.md"

# namedtupledefs
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/namedtupledefs"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/README.md"

# jsondata
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/jsondata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/README.md"

# rdbg
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/rdbg"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/README.md"

# epyunit
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/epyunit"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/README.md"

# multiconf
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/multiconf"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/README.md"

# multiconf
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/syscalls"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/setup.py"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/setenv.sh"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/README.md"



#
# windows - currently no rsync
#
if [[ "X$WINTARGET" == "X" ]];then
	
	# windows - scp only
	WINTARGET=" "
#	WINTARGET="$WINTARGET acue@w10p"
	WINTARGET="$WINTARGET acue@w7u"
	
	# PMs
#	WINTARGET="$WINTARGET x@lap000p"
fi


#
# non-windows based on rsync
#
if [[ "X$TARGET" == "X" ]];then

	TARGET=""
	
	# Container
	# soon/next
	
	# VMs
	TARGET="$TARGET test@centos6"
	TARGET="$TARGET test@centos7"
	TARGET="$TARGET test@fedora27"
	TARGET="$TARGET test@fedora28"
	TARGET="$TARGET test@openbsd6"
	TARGET="$TARGET test@opensuse15"
	TARGET="$TARGET test@debian9"
	TARGET="$TARGET test@solaris10"
	TARGET="$TARGET test@solaris11liveinst"
	
	# PMs
	
	# ARM
	TARGET="$TARGET root@atb00"
	TARGET="$TARGET pi@rpi03"
	TARGET="$TARGET root@rpi01"
	


	#
	TARGET="$TARGET ctys@snowleopard"


	#
	# Cygwin:
	#
	TARGET="$TARGET acue@w7u"
	
	
	TARGET="$TARGET "

fi

for t in $TARGET;do
    echo
    echo "#*** $t"
	# scp -r $SCP_PARTS ${t}:tmp
    # ssh $t rm -rf tests

	ping -q -c 1 -W 1 ${t#*@} 2>&1 >/dev/null
	if [[ $? -eq 0 ]];then
		echo "rsync  : => ${t}:tmp"
	    rsync --delete -aHP --inplace --exclude='*.pyc' --exclude='*.pyo' -e ssh $SCP_PARTS ${t}:tmp >/dev/null
    else
    	echo "ignore :  ${t}"
	fi
done

for t in $WINTARGET;do
    echo
    echo "#*** $t"
	# scp -r $SCP_PARTS ${t}:tmp
    # ssh $t rm -rf tests

	ping -q -c 1 -W 1 ${t#*@} 2>&1 >/dev/null
	if [[ $? -eq 0 ]];then
		echo "scp    : => ${t}:tmp"
		for x in $SCP_PARTS; do
			if [[ "X$DBG" == "X1" ]];then
				echo '$x'
		    	scp -r $x ${t}:tmp > /dev/null
			elif [[ "X$DBG" == "X1" ]];then
				scp -r $x ${t}:tmp
			else
				echo -n '.'
		    	scp -r $x ${t}:tmp > /dev/null
			fi
		done
		echo
    else
    	echo "ignore :  ${t}"
	fi
done





# centos6: . /opt/rh/python27/enable
# centos6: . /opt/rh/python33/enable
# centos6: ssh -R 5678:localhost:5678 root@centos6 . ./setenv.sh \&\& . /opt/rh/python27/enable \&\& python -m unittest discover -s tests.30_libs.platforms.scan.dist.centos -p CallCase.py --rdbg
# opensuse:  scp -r /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/jsondata/jsondata /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/namedtupledefs /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/pysourceinfo root@opensuse15:.
# opensuse:

