

## Clone ING GitHub repo: 

`git clone https://github.com/ing-bank/bdd-mobile-security-automation-framework`


## Install Docker (if you don't have it already)
`https://docker.com/`

## Install VirtualBox
`https://www.virtualbox.org/wiki/Downloads`

## Install Genymotion for personal use and install emulator
`https://www.genymotion.com/fun-zone/`

## docker build (from the docker/ folder of the repo) 
`docker build -t "mobile_testing_automation:calabash_android" .`

## Locate apk folders in the Hacking Playground (i.e)
`REPO/app`


## Execute docker run with the mounted folder

`docker run -v /REPO/app/:/masvs_automation --privileged  -i -t mobile_testing_automation:calabash_android /bin/bash`

## Connect the device to the emulator

`adb connect IP_OF_THE_EMULATOR_OR_DEVICE`



