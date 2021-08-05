sudo /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/stopServer.sh server1 -username wsadmin -password passw0rd


sleep 2
sudo /opt/IBM/WebSphere/AppServer_V90/profiles/AppSrv01/bin/stopNode.sh -username wsadmin -password passw0rd


sleep 2

sudo /opt/IBM/WebSphere/AppServer_V90/profiles/Dmgr01/bin/stopManager.sh -username wsadmin -password passw0rd



