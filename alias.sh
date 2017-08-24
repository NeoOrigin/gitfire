function git
{
   if [[ "X${1}X" == "XfireX" ]]; then
     GMSG="${GIT_FIRE_DEFAULT_MSG:-Emergency checkin}"

     if [[ "X${2}X" == "-m" ]]; then
       GMSG="${3}"
     fi

     TOP_LEVEL_REPO=$(\git rev-parse --show-toplevel 2>/dev/null)

     cd "${TOP_LEVEL_REPO:-.}" && 
     \git add . &&
     \git commit -m "${GMSG}" &&
     \git push --all &&
     cd -

     return $?
   fi

   \git "${@}"
}
