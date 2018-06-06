Feature: Databases must not
		 contain sensitive information

Scenario: As mobile application 
		  I do not want to store 
		  sensitive information in 
		  databases  



When I press "OMTG_DATAST_001_SQLite"
And I wait for 2 seconds
When the database "privateNotSoSecure" is created
And I wait for 2 seconds
Then the tables should not contain "Admin" password in cleartext
