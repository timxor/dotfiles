#!bin/bash
#
#  file:           /usr/local/bin/deploy_script.sh
#  date:           02/02/2026
#  author:         tim siwula <siwulactim@gmail.com>
#
#
#  mac os setup:
#
#      - cp deploy_script.sh /usr/local/bin/
#      - nano ~/.zshrc
#      - add this: alias deploy="bash /usr/local/bin/deploy_script.sh"
#      - source ~/.zshrc
#      - chmod +x /usr/local/bin/deploy_script.sh
#      - deploy
#
#
printf "\n running:   /usr/local/bin/deploy_script.sh \n"
git status
git pull
git add .
git status
git commit -m "sync: updating local state via deploy_script.sh"
git push
git status
printf "\n done! \n"

