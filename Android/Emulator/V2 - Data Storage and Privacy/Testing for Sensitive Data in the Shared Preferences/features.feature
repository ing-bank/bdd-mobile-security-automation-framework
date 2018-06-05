Feature: Shared Preferences must not
		 contain sensitive information

Scenario: As mobile application 
		  I do not want to store 
		  sensitive information in the 
		  shared preferences  



When I press "OMTG-DATAST-001-Shared Preferences"
Then I wait for 3 seconds
Then I should not see "secret" in the shared preferences