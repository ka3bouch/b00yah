#!/bin/bash
# cd /root/dring/


RED='\033[0;31m'
NC='\033[0m' # No Color
mkdir -p /headless/dring


git config --global user.email "z0la1@protonmail.com"
cat <<EOF > ~/.netrc
machine bitbucket.org
login z0la2
password agoon007A*
machine bitbucket.org
login z0la1
password agoon007A*
EOF


a=10
b=22
REPO_DIR=/headless/dring/




tk_1="10919460"
tk_2="17686673"
tk_3="20128881"
REPO_DIR=/headless/dring/
PIP_BITBUCKET_YML=$REPO_DIR$c/bitbucket-pipelines.yml
#echo $PIP_BITBUCKET_YML
#cat $PIP_BITBUCKET_YML

#sed -i 's/\(channels\)\(.*\)/\1R/' out
#https://booyah.live/channels/10919460
if [[ $# -eq 0 ]] ; then
    echo "USE : " $0 "<a> or  <b>  or  <t>"
    #echo $url_1
    #echo $url_2
    exit 1
else
  echo ""

       if [ "$1" = "a" ];
       then
              tks_url=$tk_1
              session_name=" - A D E L - "
              #echo $tks_url;
       fi
       if [ "$1" = "b" ];
       then
              tks_url=$tk_2
              #echo $tks_url;
              session_name=" - Y 0 S H I M I T S U - "
       fi
       if [ "$1" = "t" ];
       then
              tks_url=$tk_3
             #echo $tks_url;
             session_name="- T E S T -"
       fi
fi


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
       PIP_BITBUCKET_YML=$REPO_DIR$c/bitbucket-pipelines.yml
       #printf "I ${RED}love${NC} Stack Overflow\n"
       cd $REPO_DIR$c
       #pwd
       ch_id=$(cat $PIP_BITBUCKET_YML|grep "boo" |cut  -f5 -d '/')
       mot_time=$(cat $PIP_BITBUCKET_YML|grep "time")
       #mot_time=$(cat $PIP_BITBUCKET_YML|grep "time" |cut  -f2 -d ':')
       echo $mot_time
       printf "chanel stream id  ${RED}#$ch_id#${NC} Stack Overflow\n"


       sed -i "s/: 5/: 65/g" $REPO_DIR$c/bitbucket-pipelines.yml

       #sed -i 's/^max-time.*$/max-time 63/g' $REPO_DIR$c/bitbucket-pipelines.yml
       sed -i "s/$ch_id/$tks_url/g" $REPO_DIR$c/bitbucket-pipelines.yml
       echo  "#-#" >> bitbucket-pipelines.yml
       cat $REPO_DIR$c/bitbucket-pipelines.yml | grep "max"
       git add --all .
       git commit -m "sed comlmit"
       git push origin master   

 done
#sed -i "s/10919460/17686673/g" $REPO_DIR$c/bitbucket-pipelines.yml ## yac
