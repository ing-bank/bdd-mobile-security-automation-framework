# Testing For Sensitive Data in Logs

The following features read the application logs while the app is running and search for sensitive information in the "ERROR","DEBUG", "WARN" and "INFO" logs. The feature runs logcat on the device and detect the regex specified by the tester. The keyword must be a sensitive information that should not be logged. 


## Clean all the logs

To clean the logs on the device use the following feature

    Given I clean "all" the application log 

where "all" is the keyword used on the adb command 

    adb logcat -b #{log} -c

## Log parsing: detect sensitive information

The following step

    I should not see text with "SENSITIVE_INFORMATION" in my "LOG_LEVEL" log

searches for the specified **SENSITIVE_INFORMATION** in the **LOG_LEVEL** Android logs. 

LOG_LEVEL can only have the following values:

* Verbose (lowest priority)
* Debug
* Info
* Warning
* Error
* Fatal (highest priority)




