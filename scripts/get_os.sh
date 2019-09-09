#!/usr/bin/env bash

# file: /Users/tim.siwula/Desktop/bash/get_os.sh

# npm run package -- --env.ensGatewayVersion=2.3.${bamboo.buildNumber}


echo "running ./get_os.sh"

# get current os
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}


bambooBuidNumber=""
buildNumber=""

if [ "${machine}" == "Linux" ]; then
    bambooBuidNumber=${bamboo.buildNumber}
    buildNumber="2.3.$bambooBuildNumber"
    echo "detected linux os. buildNumber = $buildNumber"
elif [ "${machine}" == "Mac" ]; then
    buildNumber="2.3.local.development"
    echo "detected local development non-linux os. buildNumber = $buildNumber"
fi

echo "done."
