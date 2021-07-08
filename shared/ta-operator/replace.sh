# update the example to your values:

# this is your route's hostname for open api ui, the route points to both Liberty server only.
user_input_route_openapi_hostname=ta.openapi.proxy.10.0.10.2.nip.io

# this is your route's hostname, the route points to both Liberty server and UI server
user_input_route_hostname=ta.apps.proxy.10.0.10.2.nip.io

# this is your OCP's edge node full hostname or ip, it poinst to OCP's master node/ load balancer, usually is the OCP dashboard's url
user_input_edge_ip=master.ibm.demo

# this is a URL points to liberty server. It needs to be editible by the user.
user_input_liberty_server_public_url=https://ta.apps.proxy.10.0.10.2.nip.io

sed -i 's/__TA_PLACEHOLDER_ROUTE_OPEN_API_HOST_NAME__/'${user_input_route_openapi_hostname}'/g' ./deploy/crds/charts_v1alpha1_tarh_cr.yaml
sed -i 's/__TA_PLACEHOLDER_ROUTE_HOST_NAME__/'${user_input_route_hostname}'/g' ./deploy/crds/charts_v1alpha1_tarh_cr.yaml
sed -i 's/__TA_PLACEHOLDER_EDGE_IP__/'${user_input_edge_ip}'/g' ./deploy/crds/charts_v1alpha1_tarh_cr.yaml
# use hash to avoid / as separator in sed, as the value contains /
sed -i 's#__TA_PLACEHOLDER_LIBERTY_SERVER_PUBLIC_URL__#'${user_input_liberty_server_public_url}'#g' ./deploy/crds/charts_v1alpha1_tarh_cr.yaml

# for devs without using PV
# sed -i 's/enabled: true # default to use PV/enabled: false # default to use PV/g' ./deploy/crds/charts_v1alpha1_tarh_cr.yaml

echo 'done'
