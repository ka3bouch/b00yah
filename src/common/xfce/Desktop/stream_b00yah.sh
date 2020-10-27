
#!/bin/bash
reset
RED='\033[0;31m'
NC='\033[0m' # No Color
GR='\033[0;102m'
RED2='\033[0;101m'
BL='\033[0;104m'
PL='\033[0;95m'
CY='\033[0;106m'
p_1_booya_rtmp="rtmp://me.push.booyah.live/live/"
export url_1="10919460?token=595face50c34140af5092b6a5164b1d24cb15f1374298809e810ae0c3433bd327c4c206547498c65b3938bd430fd2b6d9ade1f2bd9aaa22f492ffdb95f6570d249732a589aff3fc7d2619e05ac790247fd023df33d1585d919dcd242fe3720d2b51c4a9b9468af782d6f7127a546f7f41b21135280535391b81dbdcce62221cb8c84d791bc46abd2d1ff42b48b52dda57134115856e4648c9aa5cfa2d461d6e0c504ed0b15"
export url_2="17686673?token=d84312ef6b61c380db0387f541237b83f4d2c8d61a5371ad51241aa8d80da1bf6836e399c6391d8b488758999369399b62ccf0a1168dcd8bdf319e45897bc2be23ad9144eb7ef6c80788d42c2c09d0f2f738d317a7f883480498830d2ea9f54f326d3c209a95c50730d6ce261efc08496b046d3c8dd271b6af49505ba9d025055bc5965e531d5f07fdea6007f5438389327bdc31a2610b66b696788af1f72f6d65aeed5e17"
export url_3="20128881?token=a9d25fafaa96b419ef67f37ee27badee669760e18b3ea06b6d780c8d773bd0490416057773722c4a39c71af2b986de517b34080e7004de56d0f685516056ea1c06012b47ea5c7288c858e5a02dfbd6cc5d7d8fb7c518e898e0a6e6ed0d379e7460f2e314219cc3ac3cf5d2032ccddae3e5e2113bb0245daa88383aa9f6cff6d36c0bdc54c50cdfdcdafdf0a79ad61f174d301b028dd3c482e7139b7afa6a8d0ed42d83ce30"


if [[ $# -eq 0 ]] ; then
    echo "USE : " $0 "<a> or  <b>  or  <t>"
    #echo $url_1
    #echo $url_2
    exit 1
else
  echo ""

       if [ "$1" = "a" ];
       then
              tks_url=$p_1_booya_rtmp$url_1
              session_name=" - A D E L - "
              #echo $tks_url;
       fi
       if [ "$1" = "b" ];
       then
              tks_url=$p_1_booya_rtmp$url_2
              #echo $tks_url;
              session_name=" - Y 0 S H I M I T S U - "
       fi
       if [ "$1" = "t" ];
       then
              tks_url=$p_1_booya_rtmp$url_3
             #echo $tks_url;
             session_name="- T E S T -"
       fi
fi
printf " ${RED2}- S E S S I O N _  N A M E - - - >${NC}  :  ${GR}$session_name${NC}\n"
echo ""
printf "     ${RED2}- START STREAMING             ${NC}  :  ${GR}$session_name${NC}\n"
ffmpeg -loglevel panic -re -y  -ss 250 -i "/headless/Downloads/1.mp4"  -movflags faststart -acodec copy -vcodec copy -f flv $tks_url 



