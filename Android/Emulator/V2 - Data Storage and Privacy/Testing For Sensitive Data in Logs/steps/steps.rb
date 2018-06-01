#Clean the log on the device
Given /^I clean "(.*)" the application log$/ do |log|
  %x(adb logcat -b #{log} -c)
end

# Checks that the #{text} is not reflected in the #{type} logs
#
# #{type} could be one of the following:
#
# V: Verbose (lowest priority)
# D: Debug
# I: Info
# W: Warning
# E: Error
# F: Fatal
#
# The -d option dump the log to the screen and exits. 
Then /^I (?:should not)? see text with "(.*)" in my "(.*)" log$/ do |text,type|
  
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

  counter = %x(adb logcat -d --regex=\"#{text}\" *:#{loglevel}| grep #{loglevel}/ | wc -l)
  
  clean_counter = counter.delete!("\n").delete!(" ").to_i 

  if clean_counter > 0
    fail(msg="MSTG V2.1: Sensitive information #{text} found  #{clean_counter} times in log file")
  end

end