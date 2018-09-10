require 'calabash-android/calabash_steps'


Given(/^I clean "([^"]*)" the application log$/) do |log|
  %x(adb logcat -b #{log} -c)
end


Then(/^I enter "([^"]*)" in "([^"]*)"$/) do |input, id|
  enter_text("android.widget.EditText id:'#{id}'", input)
end


Then(/^I should not see text with "([^"]*)" in my "([^"]*)" log$/) do |text, type|
    loglevel = case type
  when "Debug"
    loglevel = "D"
  when "Info"
    loglevel = "I"
  when "Warning"
    loglevel = "W"
  when "Error"
    loglevel = "E"
  when "Fatal"
    loglevel = "F"
  else
    loglevel = "S"
  end

  counter = %x(adb logcat -d | grep #{text} | wc -l)
  
  clean_counter = counter.to_i 
  

  if clean_counter > 0
    fail(msg="MSTG V2.1: Sensitive information #{text} found  #{clean_counter} times in log file")
  end
end
