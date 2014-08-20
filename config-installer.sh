#!/bin/bash 
#
# OpenStack Installation script 
#
# copyright 2014 kasidit chanchio, vasabilab, 
# http://vasabilab.cs.tu.ac.th
# Department of Computer Science, 
# Faculty of Science and Technology, Thammasat University
#
. ./install-paramrc.sh
#
export ORIHYPERVISOR=vasabi-1234hypervisor4321-ibasav
export ORIINIT_IMAGE_LOCATION=vasabi-1234init_image_location4321-ibasav
export ORIINIT_IMAGE_NAME=vasabi-1234init_image_name4321-ibasav
export ORIOPS_MYSQL_PASS=vasabilabMYSQL_PASS
export ORIDEMO_PASS=vasabilabDEMO_PASS
export ORIADMIN_PASS=vasabilabADMIN_PASS
export ORIDOMAINNAME=vasabi-1234domainname4321-ibasav
export ORICONTROLLER_IP=vasabi-1234controller_ip4321-ibasav
export ORINETWORK_IP=vasabi-1234network_ip4321-ibasav
export ORICOMPUTE_IP=vasabi-1234compute_ip4321-ibasav
export ORIEXTERNAL_CIDR=vasabi-1234external_cidr4321-ibasav
export ORINAT_INTRANET_CIDR=vasabi-1234nat_intranet_cidr4321-ibasav
export ORIMANAGEMENT_NETWORK=vasabi-1234management_network4321-ibasav
export ORISTART_FLOATING_IP=vasabi-1234start_floating_ip4321-ibasav
export ORIEND_FLOATING_IP=vasabi-1234end_floating_ip4321-ibasav
export ORIGATEWAY_IP=vasabi-1234gateway_ip4321-ibasav
export ORIMANAGEMENT_BROADCAST_ADDRESS=vasabi-1234broadcast_address4321-ibasav
export ORIVPN_IP_RANGE=vasabi-1234vpn_ip_range4321-ibasav
export ORIDATA_TUNNEL_NETWORK_NODE_IP=vasabi-1234data_tunnel_network_node_ip4321-ibasav
export ORIDATA_TUNNEL_COMPUTE_NODE_IP=vasabi-1234data_tunnel_compute_node_ip4321-ibasav
export ORIDATA_TUNNEL_NETWORK_ADDRESS=vasabi-1234data_tunnel_network_address4321-ibasav
export ORILOCAL_REPO=vasabi-1234local_repo4321-ibasav
export ORILOCAL_SECURITY_REPO=vasabi-1234local_security_repo4321-ibasav
export ORIMANAGEMENT_NETWORK_NETMASK=vasabi-1234management_network_netmask4321-ibasav
export ORIDATA_TUNNEL_NETWORK_NETMASK=vasabi-1234data_network_netmask4321-ibasav
export ORIDNS_IP=vasabi-1234dns_ip4321-ibasav
#
# extract the initial OPSInstaller directory
#
printf "\nExtract the initial OPSInstaller directory\nPress a key\n"
read varkey
#
tar xvf OPSInstaller-init.tar 
#
printf "\nAssign password values\npress to continue\n"
read varkey
#
./config.d/config-passwd.sh
#
printf "\nAssign parameter values\npress to continue\n"
read varkey
#
# Script to define parameter values below
#
ETC_FILES=OPSInstaller/*/files/*
SCRIPT_FILES=OPSInstaller/*/*.sh
#
# Change HYPERVISOR 
#
CHANGETOPIC=HYPERVISOR
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIHYPERVISOR}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIHYPERVISOR}/${HYPERVISOR}/g" ${ETC_FILES}
grep -n "${HYPERVISOR}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIHYPERVISOR}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIHYPERVISOR}/${HYPERVISOR}/g" ${SCRIPT_FILES}
grep -n "${HYPERVISOR}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change INIT_IMAGE_LOCATION 
#
CHANGETOPIC=INIT_IMAGE_LOCATION
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_LOCATION}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_LOCATION}/${INIT_IMAGE_LOCATION}/g" ${ETC_FILES}
grep -n "${INIT_IMAGE_LOCATION}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_LOCATION}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_LOCATION}/${INIT_IMAGE_LOCATION}/g" ${SCRIPT_FILES}
grep -n "${INIT_IMAGE_LOCATION}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change INIT_IMAGE_NAME 
#
CHANGETOPIC=INIT_IMAGE_NAME
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_NAME}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_NAME}/${INIT_IMAGE_NAME}/g" ${ETC_FILES}
grep -n "${INIT_IMAGE_NAME}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIINIT_IMAGE_NAME}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIINIT_IMAGE_NAME}/${INIT_IMAGE_NAME}/g" ${SCRIPT_FILES}
grep -n "${INIT_IMAGE_NAME}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change OPS_MYSQL_PASS 
#
CHANGETOPIC=OPS_MYSQL_PASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIOPS_MYSQL_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIOPS_MYSQL_PASS}/${OPS_MYSQL_PASS}/g" ${ETC_FILES}
grep -n "${OPS_MYSQL_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIOPS_MYSQL_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIOPS_MYSQL_PASS}/${OPS_MYSQL_PASS}/g" ${SCRIPT_FILES}
grep -n "${OPS_MYSQL_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change DEMO_PASS 
#
CHANGETOPIC=DEMO_PASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDEMO_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIDEMO_PASS}/${DEMO_PASS}/g" ${ETC_FILES}
grep -n "${DEMO_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDEMO_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIDEMO_PASS}/${DEMO_PASS}/g" ${SCRIPT_FILES}
grep -n "${DEMO_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change ADMIN_PASS 
#
CHANGETOPIC=ADMIN_PASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIADMIN_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIADMIN_PASS}/${ADMIN_PASS}/g" ${ETC_FILES}
grep -n "${ADMIN_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIADMIN_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIADMIN_PASS}/${ADMIN_PASS}/g" ${SCRIPT_FILES}
grep -n "${ADMIN_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change domainname in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\n----------\n"
grep -n "${ORIDOMAINNAME}" ${ETC_FILES}
printf "\nDomain name (in etc files) changed to\n"
sed -i "s/${ORIDOMAINNAME}/${DOMAINNAME}/g" ${ETC_FILES}
grep -n "${DOMAINNAME}" ${ETC_FILES}
#
# Change controller ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORICONTROLLER_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nController's IP (in etc files) changed to\n"
sed -i "s/${ORICONTROLLER_IP}/${CONTROLLER_IP}/g" ${ETC_FILES}
grep -n "${CONTROLLER_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
#
# Change network ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINETWORK_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork's IP (in etc files) changed to\n"
sed -i "s/${ORINETWORK_IP}/${NETWORK_IP}/g" ${ETC_FILES}
grep -n "${NETWORK_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change compute ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORICOMPUTE_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ncompute's IP (in etc files) changed to\n"
sed -i "s/${ORICOMPUTE_IP}/${COMPUTE_IP}/g" ${ETC_FILES}
grep -n "${COMPUTE_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
#
# Change management network cidr in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIEXTERNAL_CIDR}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork cidr  (in etc files) changed to\n"
sed -i "s/${ORIEXTERNAL_CIDR}/${EXTERNAL_CIDR}/g" ${ETC_FILES}
grep -n "${EXTERNAL_CIDR}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIEXTERNAL_CIDR}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork cidr (in script files) changed to\n"
sed -i "s/${ORIEXTERNAL_CIDR}/${EXTERNAL_CIDR}/g" ${SCRIPT_FILES}
grep -n "${EXTERNAL_CIDR}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change nat intranet cidr in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINAT_INTRANET_CIDR}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork cidr  (in etc files) changed to\n"
sed -i "s/${ORINAT_INTRANET_CIDR}/${NAT_INTRANET_CIDR}/g" ${ETC_FILES}
grep -n "${NAT_INTRANET_CIDR}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINAT_INTRANET_CIDR}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork cidr (in script files) changed to\n"
sed -i "s/${ORINAT_INTRANET_CIDR}/${NAT_INTRANET_CIDR}/g" ${SCRIPT_FILES}
grep -n "${NAT_INTRANET_CIDR}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change management network address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIMANAGEMENT_NETWORK}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nnetwork address (in etc files) changed to\n"
sed -i "s/${ORIMANAGEMENT_NETWORK}/${MANAGEMENT_NETWORK}/g" ${ETC_FILES}
grep -n "${MANAGEMENT_NETWORK}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change start floating ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORISTART_FLOATING_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nstart floating ip (in script files) changed to\n"
sed -i "s/${ORISTART_FLOATING_IP}/${START_FLOATING_IP}/g" ${SCRIPT_FILES}
grep -n "${START_FLOATING_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change end floating ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIEND_FLOATING_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nend floating ip (in script files) changed to\n"
sed -i "s/${ORIEND_FLOATING_IP}/${END_FLOATING_IP}/g" ${SCRIPT_FILES}
grep -n "${END_FLOATING_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change gateway ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIGATEWAY_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ngateway ip (in etc files) changed to\n"
sed -i "s/${ORIGATEWAY_IP}/${GATEWAY_IP}/g" ${ETC_FILES}
grep -n "${GATEWAY_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIGATEWAY_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ngateway ip (in script files) changed to\n"
sed -i "s/${ORIGATEWAY_IP}/${GATEWAY_IP}/g" ${SCRIPT_FILES}
grep -n "${GATEWAY_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Change broadcast address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIMANAGEMENT_BROADCAST_ADDRESS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nbroadcast address (in etc files) changed to\n"
sed -i "s/${ORIMANAGEMENT_BROADCAST_ADDRESS}/${MANAGEMENT_BROADCAST_ADDRESS}/g" ${ETC_FILES}
grep -n "${MANAGEMENT_BROADCAST_ADDRESS}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
#
# Change pptp ip range in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIVPN_IP_RANGE}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ngateway ip (in etc files) changed to\n"
sed -i "s/${ORIVPN_IP_RANGE}/${VPN_IP_RANGE}/g" ${SCRIPT_FILES}
grep -n "${VPN_IP_RANGE}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Data tunel network node ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NODE_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NODE_IP}/${DATA_TUNNEL_NETWORK_NODE_IP}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NODE_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NODE_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NODE_IP}/${DATA_TUNNEL_NETWORK_NODE_IP}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NODE_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Data tunel compute node ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE_NODE_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE_NODE_IP}/${DATA_TUNNEL_COMPUTE_NODE_IP}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_COMPUTE_NODE_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_COMPUTE_NODE_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_COMPUTE_NODE_IP}/${DATA_TUNNEL_COMPUTE_NODE_IP}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_COMPUTE_NODE_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# Data tunel network address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_ADDRESS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_ADDRESS}/${DATA_TUNNEL_NETWORK_ADDRESS}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_NETWORK_ADDRESS}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_ADDRESS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network ip (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_ADDRESS}/${DATA_TUNNEL_NETWORK_ADDRESS}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_NETWORK_ADDRESS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# local repo ip address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORILOCAL_REPO}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in etc files) changed to\n"
sed -i "s/${ORILOCAL_REPO}/${LOCAL_REPO}/g" ${ETC_FILES}
grep -n "${LOCAL_REPO}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORILOCAL_REPO}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in script file) changed to\n"
sed -i "s/${ORILOCAL_REPO}/${LOCAL_REPO}/g" ${SCRIPT_FILES}
grep -n "${LOCAL_REPO}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# local security repo ip address in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORILOCAL_SECURITY_REPO}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in etc files) changed to\n"
sed -i "s/${ORILOCAL_SECURITY_REPO}/${LOCAL_SECURITY_REPO}/g" ${ETC_FILES}
grep -n "${LOCAL_SECURITY_REPO}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORILOCAL_SECURITY_REPO}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nlocal repo ip (in script file) changed to\n"
sed -i "s/${ORILOCAL_SECURITY_REPO}/${LOCAL_SECURITY_REPO}/g" ${SCRIPT_FILES}
grep -n "${LOCAL_SECURITY_REPO}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# management network netmask in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIMANAGEMENT_NETWORK_NETMASK}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nmanage network netmask (in etc files) changed to\n"
sed -i "s/${ORIMANAGEMENT_NETWORK_NETMASK}/${MANAGEMENT_NETWORK_NETMASK}/g" ${ETC_FILES}
grep -n "${MANAGEMENT_NETWORK_NETMASK}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIMANAGEMENT_NETWORK_NETMASK}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\nmanage network netmask (in script file) changed to\n"
sed -i "s/${ORIMANAGEMENT_NETWORK_NETMASK}/${MANAGEMENT_NETWORK_NETMASK}/g" ${SCRIPT_FILES}
grep -n "${MANAGEMENT_NETWORK_NETMASK}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# data network netmask in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NETMASK}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network netmask (in etc files) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NETMASK}/${DATA_TUNNEL_NETWORK_NETMASK}/g" ${ETC_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NETMASK}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDATA_TUNNEL_NETWORK_NETMASK}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndata network netmask (in script file) changed to\n"
sed -i "s/${ORIDATA_TUNNEL_NETWORK_NETMASK}/${DATA_TUNNEL_NETWORK_NETMASK}/g" ${SCRIPT_FILES}
grep -n "${DATA_TUNNEL_NETWORK_NETMASK}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
# dns ip in  ${ETC_FILES} and ${SCRIPT_FILES}
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDNS_IP}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip (in etc files) changed to\n"
sed -i "s/${ORIDNS_IP}/${DNS_IP}/g" ${ETC_FILES}
grep -n "${DNS_IP}" ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDNS_IP}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\ndns ip changed to\n"
sed -i "s/${ORIDNS_IP}/${DNS_IP}/g" ${SCRIPT_FILES}
grep -n "${DNS_IP}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# get rid of control-m from MS Windows..
#
sed -i "s///g" ${ETC_FILES}
sed -i "s///g" ${SCRIPT_FILES}
#
printf "\ntar the new OPSInstaller directory\n"   
printf "press to continue\n"
read varkey
#
tar cvf OPSInstaller.tar OPSInstaller
mv OPSInstaller.tar OPSInstaller/gateway/OPSInstaller.tar
#
printf "Done! You can now run the OPSInstaller scripts\npress to exit\n"
read varkey
