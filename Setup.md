

## Clone ING GitHub repo: 

`git clone https://github.com/ing-bank/bdd-mobile-security-automation-framework`


## Clone MSTG Hacking Playground 
`git clone https://github.com/OWASP/MSTG-Hacking-Playground`


## Install Docker (if you don't have it already)
`https://docker.com/`

## Install VirtualBox
`https://www.virtualbox.org/wiki/Downloads`

## Install Genymotion for personal use and install emulator
`https://www.genymotion.com/fun-zone/`


## docker build 
`docker build -t "mobile_testing_automation:calabash_android" .`

## Locate apk folders in the Hacking Playground (i.e)
`/MSTG-Hacking-Playground/Android/OMTG-Android-App/app/build/outputs/apk/`


## Execute docker run with the mounted folder

`docker run -v /MSTG-Hacking-Playground/Android/OMTG-Android-App/app/:/masvs_automation --privileged  -i -t mobile_testing_automation:calabash_android /bin/bash
`
## Connect the device to the emulator

`adb connect IP_OF_THE_EMULATOR_OR_DEVICE`



