Feature: Clipboard cache should not 
		 contain sensitive information

Scenario: As a user I try to copy a
		  sensitive information in my 
		  clipboard

When I enter "THISISASENSITIVEINFORMATION" in textField1
And I "Select All" the text in "usernameField"
Then I should not be able to "Copy" in my clipboard