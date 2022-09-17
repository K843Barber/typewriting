source text.sh

function_doodars()
{
  local var2
  if [ $(($1%2)) == 0 ]
  then
    var2=$1
    echo $(($var2/2))
  else
    var2=$(($1+1))
    echo $(($var2/2))
  fi
}

function_doo_doos()
{
  for i in $(seq 1 $1); do printf ' '; done
}

