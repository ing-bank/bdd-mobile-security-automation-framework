# Automating OWASP MSTG through BDD mobile security testings

ING provides a set of BDD security tests with Calabash,Cucumber and Ruby, following the OWASP Mobile Security Testing Guide and the OWASP Mobile Top 10 2016, that can be easily customized and implemented through the entire CI/CD pipeline. 

The tests use the power of [calabash.io](https://calabash.io) to automate the UI, [Cucumber](https://cucumber.io/) and Gherkin for its simple language and the Android tools to check for security issues.

### Prerequisites for Android

* Docker
* Genymotion or real devices 

### Prerequisites for iOS

* macOS
* Xcode CLI tools 

## Docker container for Android testing

The docker container can be used to spin up Calabash and the Android tools. Follow the README in the docker folder.

__At the moment the docker container can only be used to test Android applications. If you want to run iOS tests you need to install Calabash native on macOS__


## First Test

The repo contains a simple test that can be used as a sample to check that everything works. 


## OWASP MASVS and MSTG
The repo's structure is based on the [OWASP Mobile Application Security Verification Standard](https://github.com/OWASP/owasp-masvs) and the corresponding tests from the [OWASP Mobile Security Testing Guide](https://github.com/OWASP/owasp-mstg). For each test many features are defined with the corresponding steps.


## How to contribute

In order to contribute in creating new tests, the best way is to identify first which command will be usefull to automate specific controls. Follow the following steps:

-	Go to the "Issues" tab and select a test that you would like to write
-	Create a folder in the repo with the following structure OS/Emulator or Device/MASVS chapter/ MSTG Test/
	-	so in example Android/Emulator/V2 - Data Storage and Privacy/Testing for Sensitive Information in log files/
-	Create a README.md with the description of the commands to use and how to use it 
- 	Create a .feature file
-  Create a steps.rb file 

Follow the Wiki to check how to create pull requests. 


## Tested on

The following BDD tests have been tested using the following OWASP vulnerable apps as test cases:

*	Android: [MSTG Hacking Playground](https://github.com/OWASP/MSTG-Hacking-Playground)
* 	iOS: [iGoat](https://github.com/OWASP/igoat) 






