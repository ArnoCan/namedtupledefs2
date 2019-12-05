TUSER=${TUSER:-test}

PKGS=""
PKGS+=" namedtupledefs "
PKGS+=" bin "
PKGS+=" tests "
PKGS+=" testdata "
PKGS+=" setenv-acue.sh "
PKGS+=" setenv.sh "
PKGS+=" setenv.bat "

TARGETS=(
    ${TUSER}@w10p:tmp
    ${TUSER}@w2008r2:tmp
    ${TUSER}@w2012r2:tmp
    ${TUSER}@w2016:tmp
    ${TUSER}@w2019se:tmp
#    ${TUSER}@w7u:tmp
#    ${TUSER}@w81:tmp
#    ${TUSER}@wxp:tmp
)

for t in ${TARGETS[@]};do
    echo $t
    h=${t#*@};h=${h%:*};
    ping -c 1 -W 1 ${h}
    if [[ $? == 0 ]];then
	echo "#*******  $t  ***************"
	rsync -avHPS \
	    --exclude='*.pyc'   --exclude='__pycache__'  --exclude='*.pyo' \
           --rsync-path='c:\\\\cygwin64\\\\bin\\\\rsync.exe' \
	   $PKGS $t
    fi
done

TARGETS=(
   ${TUSER}@w2000:/cygdrive/c/Users/test/tmp
#   ${TUSER}@w40s:/cygdrive/c/Users/test/tmp
#   ${TUSER}@w7u:/cygdrive/c/Users/test/tmp
   ${TUSER}@w7u:/cygdrive/c/Users/test/tmp
   ${TUSER}@w81:/cygdrive/c/Users/test/tmp
   ${TUSER}@wxp:/cygdrive/c/Users/test/tmp
)

for t in ${TARGETS[@]};do
    echo $t
    h=${t#*@};h=${h%:*};
    ping -c 1 -W 1 ${h}
    if [[ $? == 0 ]];then
	echo "#*******  $t  ***************"
	rsync -avHPS \
	       --exclude='*.pyc'   --exclude='__pycache__'  --exclude='*.pyo' \
	   $PKGS $t
    fi
done

exit 0


echo "#*******  ${TUSER}@wxp  ***************"
rsync -avHPS \
       --exclude='*.pyc'   --exclude='__pycache__'  --exclude='*.pyo' \
      $PKGS ${TUSER}@wxp:/cygdrive/c/Users/test/tmp

echo "#*******  ${TUSER}@w81  ***************"
rsync -avHPS \
       --exclude='*.pyc'   --exclude='__pycache__'  --exclude='*.pyo' \
      $PKGS ${TUSER}@w81:/cygdrive/c/Users/test/tmp

echo "#*******  ${TUSER}@w7u  ***************"
rsync -avHPS \
       --exclude='*.pyc'   --exclude='__pycache__'  --exclude='*.pyo' \
      $PKGS ${TUSER}@w7u:/cygdrive/c/Users/test/tmp


exit 0

rsync -avHPS \
      $PKGS ${TUSER}@wxp:/cygdrive/c/Users/test/tmp

#      --rsync-path='c:\\\\cygwin\\\\bin\\\\rsync.exe' \

#*** W10P ***

 

#
# python)
#
set PYTHONPATH=%HOMEDRIVE%%HOMEPATH%;%PYTHONPATH%
set PATH=%HOMEDRIVE%%HOMEPATH%\tmp\bin;%PATH%
call setenv.bat
c:\python27\python.exe -m unittest discover -s tests.pypythonids -p CallCase.py


#
# pypy)
#
set PYTHONPATH=%HOMEDRIVE%%HOMEPATH%;%PYTHONPATH%
set PATH=%HOMEDRIVE%%HOMEPATH%\tmp\bin;%PATH%
call setenv.bat
c:\pypy3-600\pypy3.exe -m unittest discover -s tests.pypythonids -p CallCase.py


#
# ironpython)
#
set PYTHONPATH=%HOMEDRIVE%%HOMEPATH%;%PYTHONPATH%
set PATH=%HOMEDRIVE%%HOMEPATH%\tmp\bin;%PATH%
call setenv.bat
c:\ironpython279\ipy.exe -m unittest discover -s tests.pypythonids -p CallCase.py


#
# jython)
#
chcp cp0
set PYTHONPATH=%HOMEDRIVE%%HOMEPATH%;%PYTHONPATH%
set PATH=%HOMEDRIVE%%HOMEPATH%\tmp\bin;%PATH%
call setenv.bat
java -jar c:\jython270\jython.jar -m unittest discover -s tests.pypythonids -t tests -p CallCase.py




# ipython)
#	    _MYCALL+="  ${_imp}${_imprel} -m unittest -- discover -s tests.${_PACKAGE} -p CallCase.py "
	    
