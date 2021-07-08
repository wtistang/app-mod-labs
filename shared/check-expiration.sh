echo | openssl s_client -servername api.demo.ibmdte.net -connect api.demo.ibmdte.net:6443  2>/dev/null | openssl x509 -noout -dates
if [ $now -ge $notBefore ]; 
then
 echo 'yes';
fi
