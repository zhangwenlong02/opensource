#! /bin/bash
#creatlog
today=`date +%Y-%m-%d`
filelog="${today}.log"
if [ ! -e /home/zwl/shell_learn/8.16/$filelog ];then
	touch /home/zwl/shell_learn/8.16/filelog
fi

echo "`date +'%Y-%m-%d %T'` start">>/home/zwl/shell_learn/8.16/filelog
sleep 3
echo "`date +'%Y-%m-%d %T'` stop">>/home/zwl/shell_learn/8.16/filelog
