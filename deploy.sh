tar -zcf $REPONAME.tar.gz _book
scp -P $port $REPONAME.tar.gz git@$ip:$SCPDIR
rm $REPONAME.tar.gz
ssh -p $port git@$ip "cd $REPORTNAME;tar -zxf $REPONAME.tar.gz"
