require 'calabash-android/calabash_steps'

Given(/^my app is running$/) do
 sleep(1) 
end

Then(/^I wait (\d+) seconds$/) do |arg1|
  sleep(2)
end
