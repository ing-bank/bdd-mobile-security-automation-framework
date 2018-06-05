Feature: Logs must not 
		 contain sensitive information

Scenario: As a user I insert my sensitive 
		  information and I check they are not
		  reflected in the logfiles 


Given I clean "all" the application log 
And I should not see text with "SENSITIVE_INFORMATION" in my "Debug" log



