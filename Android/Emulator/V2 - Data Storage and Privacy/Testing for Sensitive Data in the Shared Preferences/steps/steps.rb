

$gvar = "sg.vp.owasp_mobile.omtg_android"



Then /^I (?:should not)? see "(.*)" in the shared preferences$/ do |text|
   
   string = "adb shell cat /data/data/" + $gvar + "/shared_prefs/*.xml | grep #{text} | wc -l"
   
   $var = %x(#{string}).to_i
   
  if  $var > 0
  	fail(msg="MSTG V2.1: #{text} found in Shared Preferences")
  end
end
