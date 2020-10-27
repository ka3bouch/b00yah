#!/bin/bash
# cd /root/dring/
git config --global user.email "z0la1@protonmail.com"
cat <<EOF > ~/.netrc
machine bitbucket.org
login z0la2
password agoon007A*

machine bitbucket.org
login z0la1
password agoon007A*
EOF


mkdir -p /headless/dring

a=10
b=22
REPO_DIR=/headless/dring/

RED='\033[0;31m'
NC='\033[0m' # No Color


 printf "${RED}###########################################${NC}\n"
 for i in {1..41..1}
    do
       cd /headless/dring/
       echo "########## 0$i ############################"
       if [ "$i" -ge "$a" ];
       then
       	c=$i;
       else
       	c=0$i;
       fi
      #n=1
       if [ "$i" -ge "$b" ];
       then
              n=2;
       else
              n=1;
       fi
       git clone https://z0la$n@bitbucket.org/z0la$n/$c.git
       echo -e "${RED}git@bitbucket.org:z0la$n/$c.git"
      # echo -e "\e[49m"
       printf "I ${RED}love${NC} Stack Overflow\n"
       cd $REPO_DIR$c
       pwd
       printf "I ${RED}##############################################${NC} Stack Overflow\n"
       sed -i "s/: 65/: 5/g" $REPO_DIR$c/bitbucket-pipelines.yml
       #sed -i "s/10919460/17686673/g" $REPO_DIR$c/bitbucket-pipelines.yml ## yac
       sed -i "s/17686673/10919460/g" $REPO_DIR$c/bitbucket-pipelines.yml
       echo "#" >> bitbucket-pipelines.yml
       git add --all .
       git commit -m "1Test comlmit"
       git push origin master   

 done

