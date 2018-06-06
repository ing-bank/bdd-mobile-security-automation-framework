# Testing for sensitive information in Databases

The following feature checks that sensitive information are not stored in plaintext in a specific database 


## Check a specific database to find sensitive information

The feature

	When the database "privateNotSoSecure" is created
	
checks that the database we want to investigate, has been created by the application. If the database does not exist, the test fails


When the database has been created the feature

	Then the tables should not contain "Admin" password in cleartext

will inspect the sqlite database to see if a specific plaintext secret has been stored.


### Command

To read info from the database, we dump all the tables and look for the specific secret


	adb shell sqlite3 " + $path + $database + " .dump | grep #{plaintext} | wc -l


