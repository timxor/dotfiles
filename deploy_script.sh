#!bin/bash
# alias deploy="bash /usr/local/bin/deploy_script.sh"
# chmod +x /usr/local/bin/deploy_script.sh
# bash /usr/local/bin/deploy_script.sh

echo "-----> starting /usr/local/bin/deploy_script.sh ---->"
git status
git add .
git status
git commit -m ":bowtie: [auto generated] via tim's deploy_script.sh"
git push
git status
echo "<----- done <----"
