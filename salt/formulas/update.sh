#!/bin/bash -e

PATH_FORMULAS=$(dirname $(realpath  $0))

test -f "${PATH_FORMULAS}/formulas.list" || exit 1

while IFS=" " read -r name branch url
do
  # skip empty lines
  [ "${name}" = "" ] && continue
  
  (
    echo ""
    echo "Updating ${name} from repository ${url} tag ${branch}"
  
    # if there is no repository, then make a clone
    if [ ! -d ${PATH_FORMULAS}/${name} ]; then
      git clone ${url} ${PATH_FORMULAS}/${name}-${branch}
    fi
  
    # switch to a branch or tag
    cd ${PATH_FORMULAS}/${name}-${branch} \
      && git remote set-url origin ${url} \
      && git fetch -p --quiet \
      && git clean -dfx --quiet \
      && git reset --hard --quiet \
      && git checkout -f ${branch} --quiet \
      && rm -rf .git; rm -rf .github
   
   ) > ${PATH_FORMULAS}/${name}.log 2>&1 &

done < "${PATH_FORMULAS}/formulas.list"
wait

cat ${PATH_FORMULAS}/*.log
rm -f ${PATH_FORMULAS}/*.log
