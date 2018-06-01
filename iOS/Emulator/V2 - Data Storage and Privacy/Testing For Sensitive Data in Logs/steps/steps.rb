Then /^I (?:should not)? see text with "(.*)" in my "([^"]*)" log$/ do |text,type|
  if  %x( xcrun simctl spawn booted syslog | grep #{text} |grep #{type} | wc -l ).delete!("\n").delete!(" ").to_i > 0
  	fail(msg="#{text}  found in #{type} logs")
  end
end
