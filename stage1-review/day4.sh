rm -rf x.java y.py z.js

touch x.java y.py z.js

for raj in `ls *.java *.py *.js`
do

  fNames=`echo $raj | awk -F. '{ print $1 }'`

  if  [ -d $fNames ]
  then
    rm -rf  $fNames
  fi

  mkdir $fNames

  fNames1=`echo $raj | awk -F. '{ print $2 }'`

  if  [ -d $fNames1 ]
  then
    rm -rf  $fNames1
  fi

  mkdir -p $fNames1

  mv $fNames1 $fNames

  mv ~/Desktop/stage1-review/$raj ~/Desktop/stage1-review/$fNames/$fNames1

done

