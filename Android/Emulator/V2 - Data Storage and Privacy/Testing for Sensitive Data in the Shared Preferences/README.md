# Testing for sensitive information in Shared Preferences


The following feature checks that a sensitive information inserted in the input text is not stored in the keyboard cache


## Check the .xml files to find sensitive information

The following feature

	Then I should not see "THISISASENSITIVEINFORMATION" in the shared preferences
	
checks for sensitive data in the file sstored in shared preferences


###Command



	cat /data/data/ANDROID_PACKAGE/shared_prefs/*


