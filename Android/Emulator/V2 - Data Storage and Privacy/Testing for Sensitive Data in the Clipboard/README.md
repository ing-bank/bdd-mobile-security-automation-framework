# Testing For Sensitive Data in Clipboard

Input fields and labels that shows sensitive information should not have the possibility to copy the text in the clipboard enables, exposing sensitive information outside of the app context.


## Check the clipboard

This feature tries to copy information put in input fields. The information that is copied should be a sensitive information that should not be copied by the user. 

	Then I should not be able to "Copy" in my clipboard


