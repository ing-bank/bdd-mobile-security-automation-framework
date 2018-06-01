Feature: Logs must not 
		 contain sensitive information

Scenario: As a user I insert my sensitive 
		  information and I check they are not
		  reflected in the logfiles 


Given I clean "all" the application log 
When I enter text "SENSITIVE_INFORMATION" into field with id "id_of_the_input_field"
And I press the enter button
And I press the "Login" button
Then I wait for 2 seconds
And I should not see text with "SENSITIVE_INFORMATION" in my "Debug" log



