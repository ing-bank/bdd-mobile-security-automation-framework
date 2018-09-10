# Docker and emulator/device setup


This document provides a steb by step guide on how to build the docker container, use Genymotion to emulate Android devices and use the container to run the test.

## On the host machine

1. Install [Genymotion "personal use"](https://www.genymotion.com/fun-zone/) and run an instance of Android API 22
2. Create a folder with the .apk 
3. Build the image using the Dockerfile (see below)
4. Run the image and mount the folder with APK and tests (see below)
	
	
### Build the image using the Dockerfile 

From the docker directory run

```
docker build -t "mobile_testing_automation:calabash_android" .
```

### Run the image and mount the folder with APK and tests


```
docker run -v /PATH/TO/YOUR/FOLDER/WITH/APK/AND/TESTS:/masvs_automation --privileged  -i -t mobile_testing_automation:calabash_android /bin/bash
```



## From the container

### Connect the emulator/device

`adb connect IP_OF_THE_EMULATOR_OR_DEVICE`

To get the IP of the __emulator__ run `adb devices -l` from the host machine.

To get the IP of the __device__ run `adb shell ifconfig` and take the address of eth0 

### Create the feature folder

Run `calabash-android gen` to generate the feature folder

It will create a Cucumber skeleton in the current folder like this:


    features
    |_support
    | |_app_installation_hooks.rb
    | |_app_life_cycle_hooks.rb
    | |_env.rb
    | |_hooks.rb
    |_step_definitions
    | |_calabash_steps.rb
    |_my_first.feature
    
 where `my_first.feature` will contain the gherkin syntax and `calabash_steps.rb` will contain the Ruby code 
 
### Fix keystore related issues after set up

After setting up the container the keystore related issues may raise. The following steps will help to fix the issue

-	Navigate to  `~/.android/` directory .
-  Remove the existing `debug.keystore` file in case one exist
-	Apply the following command 

```
$keytool -genkey -v -keystore debug.keystore -alias androiddebugkey -storepass android -keypass android -keyalg RSA -keysize 2048 -validity 10000
```
-	Following that navigate to the directory where the feature files exist and setup the calabash android by using the command

```
$ calabash-android setup

```
Insert the complete path `~/.android/debug.keystore`

-	The resign the new debug.keystore file using the command

``` 
$ calabash-android resign <apk path>
```
-	And finally run the test by using the command 

``` 
$ calabash-android run <apk path>
```


### Run the test with Calabash

`calabash-android run APP.apk`


# Troubleshooting:

### TLS/ problem:

On the host machine run

```
sysctl -w net.ipv4.tcp_mtu_probing=1net.ipv4.tcp_mtu_probing = 1
```

