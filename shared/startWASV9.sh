
docker start db2-pbw

sleep 2

sudo /opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/bin/startManager.sh

sleep 2
sudo /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/startNode.sh

sleep 2
sudo /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/startServer.sh server1
echo "WAS console url: https://localhost:9044/ibm/console/; http port: 9081"

