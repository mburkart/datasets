ERA=$1

ls /portal/ekpbms2/home/jbechtel/kappa_skim_workdir/nmssm_skims_${ERA}_*/*/*conf > while.sh

sed -i "s/^/go.py /g" while.sh
sed -i "s/conf/conf -G/g" while.sh

sed -i "1 ido" while.sh
sed -i "1 iwhile [ -f \".lock\" ]" while.sh
sed -i "1 itouch .lock" while.sh 

sed -i "\$adone" while.sh




