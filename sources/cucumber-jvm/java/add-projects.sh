for i in `seq 1 500`
do
  i=`printf %04d $i`
  echo $i
  mvn3 -Dproject.number=$i clean jacoco:prepare-agent install sonar:sonar  
done
