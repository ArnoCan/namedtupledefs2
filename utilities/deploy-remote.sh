#
# control variables:
#
#    TARGET
#    WINTARGET
#    DBG

# TARGET=" " # deactivates rsync - scp
# WINTARGET -> C:\Users|<user>\tmp
# CYGWINTARGET -> ~/tmp  (cygwin home: default:=c:/cygwin64/home/<user>)
SCP_PARTS=""

date

#
# generic pre-requisites
#
MYPATH=${BASH_SOURCE%/*}
SCP_PARTS="$SCP_PARTS ${MYPATH}/README.md"
SCP_PARTS="$SCP_PARTS ${MYPATH}/ArtisticLicense20.html"
SCP_PARTS="$SCP_PARTS ${MYPATH}/licenses-amendments.txt"
SCP_PARTS="$SCP_PARTS ${MYPATH}/setup.py"
SCP_PARTS="$SCP_PARTS ${MYPATH}/setenv.sh"
SCP_PARTS="$SCP_PARTS ${MYPATH}/setenv.bat"

X0=`date +%s`

# epyunit
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/epyunit/components/epyunit/epyunit"

# namedtupledefs
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/namedtupledefs/components/namedtupledefs/namedtupledefs"

# jsondata
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/jsondata/components/pyjsondata/jsondata"

# multiconf
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/multiconf/components/pymulticonf/multiconf"

# platformids
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/platformids/components/pyplatformids/platformids"

# rdbg
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/rdbg/components/pyrdbg/rdbg"

# sourceinfo
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sourceinfo/components/pysourceinfo/sourceinfo"

# sshutils
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sshutils/components/pysshutils/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sshutils/components/pysshutils/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sshutils/components/pysshutils/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/sshutils/components/pysshutils/sshutils"

# syscalls
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/bin"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/tests"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/testdata"
SCP_PARTS="$SCP_PARTS /local/hd1/home1/data/acue/rd/p-open-staging.lap001/syscalls/components/pysyscalls/syscalls"



#
# windows native SSH - currently no rsync
#
if [[ "X$WINTARGET" == "X" ]];then
	
	# windows - scp only
	WINTARGET=" "
#	WINTARGET="$WINTARGET acue@w10p"
#	WINTARGET="$WINTARGET acue@w7u"
	
	# PMs
#	WINTARGET="$WINTARGET x@lap000"
fi


#
# windows by cygwin - rsync
#
if [[ "X$WINBYCYGTARGET" == "X" ]];then
	WINBYCYGTARGET=" "
	WINBYCYGTARGET="$WINBYCYGTARGET acue@w10p"
	WINBYCYGTARGET="$WINBYCYGTARGET acue@w7u"
	
	# PMs
	WINBYCYGTARGET="$WINBYCYGTARGET x@lap000"
fi

#
# cygwin native - rsync
#
if [[ "X$CYGWINTARGET" == "X" ]];then
	
	# windows - scp only
	CYGWINTARGET=" "
	CYGWINTARGET="$CYGWINTARGET acue@w10p"
	CYGWINTARGET="$CYGWINTARGET acue@w7u"
	
	# PMs
	CYGWINTARGET="$CYGWINTARGET x@lap000"
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
	TARGET="$TARGET test@solaris11"
	
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

for t in $TARGET "";do
	if [[ "X$t" == "X" ]];then
		break
	fi
	
    echo
    echo "#*** TARGET: $t:tmp"
	# scp -r $SCP_PARTS ${t}:tmp
    # ssh $t rm -rf tests

	ping -q -c 1 -W 1 ${t#*@} 2>&1 >/dev/null
	if [[ $? -eq 0 ]];then
		X1=`date +%s`
		echo "rsync  : => ${t}:tmp"
		if [[ "X$DBG" == "X1" ]];then
		    echo rsync --delete -aHP --inplace --exclude='*.pyc'  --exclude='__pycache__' --exclude='*.pyo' -e ssh $SCP_PARTS ${t}:tmp
	    fi
	    rsync --delete -aHP --inplace --exclude='*.pyc' --exclude='__pycache__' --exclude='*.pyo' -e ssh $SCP_PARTS ${t}:tmp

		Y1=`date +%s`
		Z0=$(((Y1-X0)/60))
		Z1=$(((Y1-X1)/60))
		echo "(finished => ${t} ($Z1 / $Z0))"
    else
    	echo "ignore :  ${t}"
	fi
done

for t in $WINTARGET "";do
	if [[ "X$t" == "X" ]];then
		break
	fi

	#
	# native windows SSH/SCP, >= W10 / W2016
	#
    echo
    echo "#*** WINTARGET: $t:c:/users/${t%@*}/tmp"
	ping -q -c 1 -W 1 ${t#*@} 2>&1 >/dev/null
	if [[ $? -eq 0 ]];then
		X1=`date +%s`
		echo "scp    : => ${t}:tmp"
		for x in $SCP_PARTS; do
			echo "scp  : => ${x}:tmp"

			if [[ "X$DBG" == "X1" ]];then
			    echo scp -r $x ${t}:"c:/users/${t%@*}/tmp" > /dev/null
			else
				echo -n '.'
		    fi
			scp -r $x ${t}:"c:/users/${t%@*}/tmp" > /dev/null
		done
		Y1=`date +%s`
		Z0=$(((Y1-X0)/60))
		Z1=$(((Y1-X1)/60))
		echo "(finished => ${t} ($Z1 / $Z0))"
		echo
    else
    	echo "ignore :  ${t}"
	fi
done


for t in $WINBYCYGTARGET "";do
	if [[ "X$t" == "X" ]];then
		break
	fi
	#
	# windows - access by cywin
    #
    echo
    echo "#*** WINBYCYGTARGET: $t:/cygdrive/c/users/${t%@*}/tmp"
	ping -q -c 1 -W 1 ${t#*@} 2>&1 >/dev/null
	if [[ $? -eq 0 ]];then
		X1=`date +%s`
		echo "rsync  : => ${t}:tmp"
		if [[ "X$DBG" == "X1" ]];then
		    echo rsync --delete -aHP --inplace --exclude='*.pyc'  --exclude='__pycache__' --exclude='*.pyo' -e ssh $SCP_PARTS ${t}:"/cygdrive/c/users/${t%@*}/tmp"
		fi
	    rsync --delete -aHP --inplace --exclude='*.pyc'  --exclude='__pycache__' --exclude='*.pyo' -e ssh $SCP_PARTS ${t}:"/cygdrive/c/users/${t%@*}/tmp"
		Y1=`date +%s`
		Z0=$(((Y1-X0)/60))
		Z1=$(((Y1-X1)/60))
		echo "(finished => ${t} ($Z1 / $Z0))"
    else
    	echo "ignore :  ${t}"
	fi
done


for t in $CYGWINTARGET "";do
	if [[ "X$t" == "X" ]];then
		break
	fi
	
	#
	# windows - native cygwin environment
    #
    echo
    echo "#*** CYGWINTARGET: $t:tmp"
	ping -q -c 1 -W 1 ${t#*@} 2>&1 >/dev/null
	if [[ $? -eq 0 ]];then
		X1=`date +%s`
		echo "rsync  : => ${t}:tmp"
		if [[ "X$DBG" == "X1" ]];then
		    echo rsync --delete -aHP --inplace --exclude='*.pyc' --exclude='__pycache__' --exclude='*.pyo' -e ssh $SCP_PARTS ${t}:tmp
		fi
		rsync --delete -aHP --inplace --exclude='*.pyc' --exclude='__pycache__' --exclude='*.pyo' -e ssh $SCP_PARTS ${t}:tmp
		Y1=`date +%s`
		Z0=$(((Y1-X0)/60))
		Z1=$(((Y1-X1)/60))
		echo "(finished => ${t} ($Z1 / $Z0))"
    else
    	echo "ignore :  ${t}"
	fi
done

Y0=`date +%s`
Z0=$(((Y0-X0)/60))

date
echo "Total: $Z0 minutes"
