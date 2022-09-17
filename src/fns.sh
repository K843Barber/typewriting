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

function_doodoos()
{
  sentence=$1
  while [ ${#sentence} -gt 0 ]; do
    printf '%b' '\033[1m'"${sentence%${sentence#?}}"'\033[0m'
    sentence=${sentence#?}
    sleep $NN
  done
}
