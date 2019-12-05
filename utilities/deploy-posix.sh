
PKGS=""
PKGS+=" namedtupledefs "
PKGS+=" bin "
PKGS+=" tests "
PKGS+=" testdata "
PKGS+=" setenv-acue.sh "
PKGS+=" setenv.sh "
PKGS+=" setenv.bat "

TARGETS=(
    test@alpine00:tmp
    test@archlin00:tmp
    test@centos6:tmp
    test@centos7:tmp
    test@debian9:tmp
    test@dragonflybsd:tmp
    test@fedora27:tmp
    test@fedora28:tmp
    test@fedora29:tmp
    test@freebsd1102:tmp
    test@minix3:tmp
    test@netbsd:tmp
    test@ol7u6:tmp
    test@openbsd63:tmp
    test@opensuse15:tmp
    test@openwrt17016:tmp
    test@openwrt18061:tmp
    test@rhel7:tmp
    test@rhel8:tmp
    test@slackware00:tmp
    test@snowleopard:tmp
    test@solaris10:tmp
    test@solaris11:tmp
    test@ubuntu1604:tmp
    test@ubuntu1804:tmp
    test@ubuntu1810:tmp
)

for t in ${TARGETS[@]};do
    echo $t
    h=${t#*@};h=${h%:*};
    ping -c 1 -W 1 ${h}
    if [[ $? == 0 ]];then
	echo rsync -avHPS $PKGS $t
	rsync -avHPS \
	      --exclude='*.pyc'  --exclude='__pycache__' --exclude='*.pyo' \
	      $PKGS $t
    fi
done





exit 0


#
# python)
#
cd  $HOME/tmp
PYTHONPATH=$HOME/tmp:$PYTHONPATH
PATH=$HOME/tmp/bin:$PATH
export PYTHONPATH
export PATH
export JYTHON_HOME
. ./setenv.sh
python2 -m unittest discover -s tests.pypythonids -p CallCase.py

#
# ipython)
#
cd  $HOME/tmp
PYTHONPATH=$HOME/tmp:$PYTHONPATH
PATH=$HOME/tmp/bin:$PATH
export PYTHONPATH
export PATH
export JYTHON_HOME
. ./setenv.sh
ipython2 -m unittest discover -- -s tests.pypythonids -p CallCase.py


#
# pypy)
#
cd  $HOME/tmp
PYTHONPATH=$HOME/tmp:$PYTHONPATH
PATH=$HOME/tmp/bin:$PATH
export PYTHONPATH
export PATH
export JYTHON_HOME
. ./setenv.sh
pypy -m unittest discover -s tests.pypythonids -p CallCase.py


#
# jython)
#
cd  $HOME/tmp
PYTHONPATH=$HOME/tmp:$PYTHONPATH
PATH=$HOME/tmp/bin:$PATH
JYTHON_HOME=/opt/jython/jythpn-2.7.0
export PYTHONPATH
export PATH
export JYTHON_HOME
. ./setenv.sh
java -jar /opt/jython/jython-2.7.0/jython.jar -m unittest discover -s tests.pypythonids -t tests -p CallCase.py



#
##################################################################################################################
#

# local

. ./setenv-acue.sh
. ./setenv.sh


#
# python)
#
python2 -m unittest discover -s tests.pypythonids -p CallCase.py

#
# pypy)
#
pypy -m unittest discover -s tests.pypythonids -p CallCase.py


#
# jython)
#
java -jar /opt/jython/jython-2.7.0/jython.jar -m unittest discover -s tests.pypythonids -t tests -p CallCase.py

#
# ipython)
#
ipython2 -m unittest discover -- -s tests.pypythonids -p CallCase.py
