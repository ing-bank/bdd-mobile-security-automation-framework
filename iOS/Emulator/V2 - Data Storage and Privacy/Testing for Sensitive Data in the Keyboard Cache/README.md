# Testing whether the keyboard cache is disabled for text input fields


The following feature checks that a sensitive information inserted in the input text is not stored in the keyboard cache


## Check the keyboard cache

The following feature

	Then I should not see text with "THISISASENSITIVEINFORMATION" in my keyboad_cache
	
checks for sensitive data in the keyboard cache. The information must first be added to the cache explicitely when is passed as a input value

### More details

[Sensitive data in the keyboard cache](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06d-Testing-Data-Storage.md#testing-for-sensitive-data-in-the-keyboard-cache)



