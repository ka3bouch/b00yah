#!/bin/bash
# cd /root/dring/
mkdir -p /headless/dring
a=10
REPO_DIR=/headless/dring/

RED='\033[0;31m'
NC='\033[0m' # No Color


 echo "Bash version ${BASH_VERSION}..."
 for i in {1..21..1}
    do
       cd /headless/dring/
       echo "Welcome 0$i times"
       if [ "$i" -ge "$a" ];
       then
       	c=$i;
       else
       	c=0$i;
       fi
       git clone git@bitbucket.org:z0la1/$c.git
       echo -e "\e[31mgit@bitbucket.org:z0la1/$c.git"
       echo -e "\e[49m"
       printf "I ${RED}love${NC} Stack Overflow\n"
       cd $REPO_DIR$c
       pwd
       #sed -i "s/10919460/17686673/g" $REPO_DIR$c/bitbucket-pipelines.yml ## yac
       #sed -i "s/17686673/10919460/g" $REPO_DIR$c/bitbucket-pipelines.yml
      # echo "#" >> bitbucket-pipelines.yml
       #git add --all .
       #git commit -m "1Test comlmit"
      # git push git@bitbucket.org:z0la1/$c.git master
 done
