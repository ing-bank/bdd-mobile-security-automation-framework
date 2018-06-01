Then /^I (?:should not)? see text with "(.*)" in my keyboard_cache$/ do |text|
  if  %x( cat /YOUR_PATH_TO_THE_KEYBARD_CACHE_FILE | grep #{text}  | wc -l ).delete!("\n").delete!(" ").to_i > 0
  	fail(msg="#{text} found in keyboard cache")
  end
end
