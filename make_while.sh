ERA=$1

ls /portal/ekpbms2/home/jbechtel/kappa_skim_workdir/nmssm_skims*/*/*conf > while_${ERA}.sh

sed -i "s/^/go.py /g" while_${ERA}.sh
sed -i "s/conf/conf -G/g" while_${ERA}.sh

sed -i "1 ido" while_${ERA}.sh
sed -i "1 iwhile_${ERA} [ -f \".lock\" ]" while_${ERA}.sh
sed -i "1 itouch .lock" while_${ERA}.sh 

sed -i "\$adone" while_${ERA}.sh

chmod u+x while_${ERA}.sh




