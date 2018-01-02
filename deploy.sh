tar -zcf $repo_name.tar.gz _book
scp $repo_name.tar.gz -P $port git@$ip:$scp-dir
rm $repo_name.tar.gz
ssh -p $port @$ip "cd $scp-dir;tar -zxf $repo_name.tar.gz"
