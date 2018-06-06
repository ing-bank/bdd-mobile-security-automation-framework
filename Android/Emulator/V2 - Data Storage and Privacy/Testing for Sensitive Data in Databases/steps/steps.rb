

$gvar = "sg.vp.owasp_mobile.omtg_android"
$database = ""
$path = ""


And /^the database "(.*)" is created$/ do |database|

	  #The following command dumps the whole database
    $path = "/data/data/" + $gvar + "/databases/"
	  
    $database = "#{database}"

	  
	  command =  "adb shell ls " + $path + $database

    $output =  %x(#{command})

    if $output != ''
      puts "Database #{database} has been found!"
    else
      fail("Database #{database} has NOT been found! Please make sure the database exists")
    end
 
end




Then /^the tables should not contain "(.*)" password in cleartext$/ do |plaintext| 
   

   puts "Reading the database " + $database  
   
   #Dump the database and look for plaintext secrets
   command = "adb shell sqlite3 " + $path + $database + " .dump | grep #{plaintext} | wc -l"
   
   #Executes the command
   output = %x(#{command})
   

   count = "#{output}".to_i

   
  if count > 0
    fail(msg="MSTG V2: #{plaintext} found in Database " + $database)
  end
end
