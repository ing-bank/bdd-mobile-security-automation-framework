And /^I "(.*)" the text in "(.*)"$/ do |menu,input_field|
	#tap will just highlight a word
	touch_hold(query("* marked:'#{input_field}'"), options = {})
	sleep(0.4)
	touch("button marked:'#{menu}'")
	sleep(0.4)

end

Then /^I should not be able to "(.*)" in my clipboard$/ do |menu|
	if query("button marked:'#{menu}'").count > 0
		fail(msg="Sensitive information found in Clipboard Cache")
	end
end
