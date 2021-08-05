#!/bin/bash
s1="20009"
if [[ "$1" == "$s1" ]]
then

sudo /opt/IBM/InstallationManager/eclipse/tools/imcl install 20.0.0.9-WS-WLP-IFPH29942 -repositories /home/ibmdemo/app-mod-labs/d20200st/20.0.0.9-ws-wlp-ifph29942/repository.config -installationDirectory /opt/IBM/WebSphere/Liberty20009 -log logfix_20009.log
else

sudo /opt/IBM/InstallationManager/eclipse/tools/imcl install 9.0.0.11-WS-WASProd-IFPH25074 -repositories /home/ibmdemo/app-mod-labs/d20200st/9.0.0.11-ws-wasprod-ifph25074 -installationDirectory /opt/IBM/WebSphere/AppServer_V90 -log logfix_90011.log
fi
