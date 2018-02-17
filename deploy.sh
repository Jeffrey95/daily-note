tar -zcf $REPONAME.tar.gz _book
scp -P $port $REPONAME.tar.gz git@blog.qiujinfeng.com:$SCPDIR
rm $REPONAME.tar.gz
ssh -p $port git@blog.qiujinfeng.com "cd $SCPDIR;if [ ! -d '$REPONAME' ];then mkdir $REPONAME;fi;tar -zxf $REPONAME.tar.gz;cp -R -u _book/* $REPONAME;rm $REPONAME.tar.gz;rm -rf _book;"
