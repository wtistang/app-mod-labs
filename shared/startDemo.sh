docker start db2-pbw

sleep 10

sudo /opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/bin/startManager.sh
sudo /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/startNode.sh
sudo /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/startServer.sh server1
echo "WAS console url: https://10.0.0.1:9044/ibm/console/ with wsadmin/passw0rd; http port: 9081"
/home/ibmdemo/cp4a-labs/shared/wlp/bin/server start myController
/home/ibmdemo/cp4a-labs/shared/wlp/bin/server start myMember
echo "Liberty adminCenter url: https://10.0.0.1:9445/adminCenter with admin/admin"


