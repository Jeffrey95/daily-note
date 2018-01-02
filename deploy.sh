tar -zcf $REPONAME.tar.gz _book
scp $REPONAME.tar.gz -P $port git@$ip:$SCPDIR
rm $REPONAME.tar.gz
ssh -p $port @$ip "cd $REPORTNAME;tar -zxf $REPONAME.tar.gz"
