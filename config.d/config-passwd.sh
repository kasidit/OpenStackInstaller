#!/bin/bash 
#
# OpenStack Installation script 
#
# copyright 2014 kasidit chanchio, vasabilab, 
# http://vasabilab.cs.tu.ac.th
# Department of Computer Science, 
# Faculty of Science and Technology, Thammasat University
#
#
export ADMIN_TOKEN=$(openssl rand -hex 10)
export METADATA_SECRET=$(openssl rand -hex 10)
export KEYSTONE_DBPASS=$(openssl rand -hex 10)
export GLANCE_DBPASS=$(openssl rand -hex 10)
export GLANCE_PASS=$(openssl rand -hex 10)
export NOVA_DBPASS=$(openssl rand -hex 10)
export NOVA_PASS=$(openssl rand -hex 10)
export DASH_DBPASS=$(openssl rand -hex 10)
export CINDER_DBPASS=$(openssl rand -hex 10)
export CINDER_PASS=$(openssl rand -hex 10)
export NEUTRON_DBPASS=$(openssl rand -hex 10)
export NEUTRON_PASS=$(openssl rand -hex 10)
export HEAT_DBPASS=$(openssl rand -hex 10)
export HEAT_PASS=$(openssl rand -hex 10)
export CEILOMETER_DBPASS=$(openssl rand -hex 10)
export CEILOMETER_PASS=$(openssl rand -hex 10)
export TROVE_DBPASS=$(openssl rand -hex 10)
export TROVE_PASS=$(openssl rand -hex 10)

#export ADMIN_TOKEN=vasabilabADMIN_TOKENibasav
#export METADATA_SECRET=vasabilabMETADATA_SECRETibasav
#export KEYSTONE_DBPASS=vasabilabKEYSTONE_DBPASSibasav
#export GLANCE_DBPASS=vasabilabGLANCE_DBPASSibasav
#export GLANCE_PASS=vasabilabGLANCE_PASSibasav
#export NOVA_DBPASS=vasabilabNOVA_DBPASSibasav
#export NOVA_PASS=vasabilabNOVA_PASSibasav
#export DASH_DBPASS=vasabilabDASH_DBPASSibasav
#export CINDER_DBPASS=vasabilabCINDER_DBPASSibasav
#export CINDER_PASS=vasabilabCINDER_PASSibasav
#export NEUTRON_DBPASS=vasabilabNEUTRON_DBPASSibasav
#export NEUTRON_PASS=vasabilabNEUTRON_PASSibasav
#
#export HEAT_DBPASS=vasabilabHEAT_DBPASSibasav
#export HEAT_PASS=vasabilabHEAT_PASSibasav
#export CEILOMETER_DBPASS=vasabilabCEILOMETER_DBPASSibasav
#export CEILOMETER_PASS=vasabilabCEILOMETER_PASSibasav
#export TROVE_DBPASS=vasabilabTROVE_DBPASSibasav
#export TROVE_PASS=vasabilabTROVE_PASSibasav

export ORIOPS_MYSQL_PASS=vasabilabMYSQL_PASS
export ORIADMIN_TOKEN=vasabilabADMIN_TOKEN
export ORIMETADATA_SECRET=vasabilabMETADATA_SECRET
export ORIKEYSTONE_DBPASS=vasabilabKEYSTONE_DBPASS
export ORIGLANCE_DBPASS=vasabilabGLANCE_DBPASS
export ORIGLANCE_PASS=vasabilabGLANCE_PASS
export ORINOVA_DBPASS=vasabilabNOVA_DBPASS
export ORINOVA_PASS=vasabilabNOVA_PASS
export ORIDASH_DBPASS=vasabilabDASH_DBPASS
export ORICINDER_DBPASS=vasabilabCINDER_DBPASS
export ORICINDER_PASS=vasabilabCINDER_PASS
export ORINEUTRON_DBPASS=vasabilabNEUTRON_DBPASS
export ORINEUTRON_PASS=vasabilabNEUTRON_PASS
#
export ORIHEAT_DBPASS=vasabilabHEAT_DBPASS
export ORIHEAT_PASS=vasabilabHEAT_PASS
export ORICEILOMETER_DBPASS=vasabilabCEILOMETER_DBPASS
export ORICEILOMETER_PASS=vasabilabCEILOMETER_PASS
export ORITROVE_DBPASS=vasabilabTROVE_DBPASS
export ORITROVE_PASS=vasabilabTROVE_PASS
#
# Password Propagation 
#
ETC_FILES=OPSInstaller/*/files/*
SCRIPT_FILES=OPSInstaller/*/*.sh
#
# Change ADMIN_TOKEN 
#
CHANGETOPIC=ADMIN_TOKEN
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIADMIN_TOKEN}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIADMIN_TOKEN}/${ADMIN_TOKEN}/g" ${ETC_FILES}
grep -n "${ADMIN_TOKEN}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIADMIN_TOKEN}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIADMIN_TOKEN}/${ADMIN_TOKEN}/g" ${SCRIPT_FILES}
grep -n "${ADMIN_TOKEN}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change METADATA_SECRET 
#
CHANGETOPIC=METADATA_SECRET
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIMETADATA_SECRET}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIMETADATA_SECRET}/${METADATA_SECRET}/g" ${ETC_FILES}
grep -n "${METADATA_SECRET}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIMETADATA_SECRET}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIMETADATA_SECRET}/${METADATA_SECRET}/g" ${SCRIPT_FILES}
grep -n "${METADATA_SECRET}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change KEYSTONE_DBPASS 
#
CHANGETOPIC=KEYSTONE_DBPASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIKEYSTONE_DBPASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIKEYSTONE_DBPASS}/${KEYSTONE_DBPASS}/g" ${ETC_FILES}
grep -n "${KEYSTONE_DBPASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIKEYSTONE_DBPASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIKEYSTONE_DBPASS}/${KEYSTONE_DBPASS}/g" ${SCRIPT_FILES}
grep -n "${KEYSTONE_DBPASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change GLANCE_DBPASS 
#
CHANGETOPIC=GLANCE_DBPASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIGLANCE_DBPASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIGLANCE_DBPASS}/${GLANCE_DBPASS}/g" ${ETC_FILES}
grep -n "${GLANCE_DBPASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIGLANCE_DBPASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIGLANCE_DBPASS}/${GLANCE_DBPASS}/g" ${SCRIPT_FILES}
grep -n "${GLANCE_DBPASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change GLANCE_PASS 
#
CHANGETOPIC=GLANCE_PASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIGLANCE_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIGLANCE_PASS}/${GLANCE_PASS}/g" ${ETC_FILES}
grep -n "${GLANCE_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIGLANCE_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIGLANCE_PASS}/${GLANCE_PASS}/g" ${SCRIPT_FILES}
grep -n "${GLANCE_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change NOVA_DBPASS 
#
CHANGETOPIC=NOVA_DBPASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINOVA_DBPASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINOVA_DBPASS}/${NOVA_DBPASS}/g" ${ETC_FILES}
grep -n "${NOVA_DBPASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINOVA_DBPASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINOVA_DBPASS}/${NOVA_DBPASS}/g" ${SCRIPT_FILES}
grep -n "${NOVA_DBPASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change NOVA_PASS 
#
CHANGETOPIC=NOVA_PASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINOVA_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINOVA_PASS}/${NOVA_PASS}/g" ${ETC_FILES}
grep -n "${NOVA_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINOVA_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINOVA_PASS}/${NOVA_PASS}/g" ${SCRIPT_FILES}
grep -n "${NOVA_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change DASH_DBPASS 
#
CHANGETOPIC=DASH_DBPASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDASH_DBPASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORIDASH_DBPASS}/${DASH_DBPASS}/g" ${ETC_FILES}
grep -n "${DASH_DBPASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORIDASH_DBPASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORIDASH_DBPASS}/${DASH_DBPASS}/g" ${SCRIPT_FILES}
grep -n "${DASH_DBPASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change CINDER_DBPASS 
#
CHANGETOPIC=CINDER_DBPASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORICINDER_DBPASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORICINDER_DBPASS}/${CINDER_DBPASS}/g" ${ETC_FILES}
grep -n "${CINDER_DBPASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORICINDER_DBPASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORICINDER_DBPASS}/${CINDER_DBPASS}/g" ${SCRIPT_FILES}
grep -n "${CINDER_DBPASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change CINDER_PASS 
#
CHANGETOPIC=CINDER_PASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORICINDER_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORICINDER_PASS}/${CINDER_PASS}/g" ${ETC_FILES}
grep -n "${CINDER_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORICINDER_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORICINDER_PASS}/${CINDER_PASS}/g" ${SCRIPT_FILES}
grep -n "${CINDER_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change NEUTRON_DBPASS 
#
CHANGETOPIC=NEUTRON_DBPASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINEUTRON_DBPASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINEUTRON_DBPASS}/${NEUTRON_DBPASS}/g" ${ETC_FILES}
grep -n "${NEUTRON_DBPASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINEUTRON_DBPASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINEUTRON_DBPASS}/${NEUTRON_DBPASS}/g" ${SCRIPT_FILES}
grep -n "${NEUTRON_DBPASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
# Change NEUTRON_PASS 
#
CHANGETOPIC=NEUTRON_PASS
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINEUTRON_PASS}" ${ETC_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} (in etc files) changed to\n\n"
sed -i "s/${ORINEUTRON_PASS}/${NEUTRON_PASS}/g" ${ETC_FILES}
grep -n "${NEUTRON_PASS}"  ${ETC_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
#
printf "\npress to continue\n"
read varkey
printf "\n----------\n"
grep -n "${ORINEUTRON_PASS}" ${SCRIPT_FILES} | tee ./tmpfile ; wc -l ./tmpfile
printf "\n\n${CHANGETOPIC} changed to\n\n"
sed -i "s/${ORINEUTRON_PASS}/${NEUTRON_PASS}/g" ${SCRIPT_FILES}
grep -n "${NEUTRON_PASS}" ${SCRIPT_FILES}  | tee ./tmpfile ; wc -l ./tmpfile 
printf "\n----------\n"
#
printf "Done propagating randomized passwords\n"
read varkey
