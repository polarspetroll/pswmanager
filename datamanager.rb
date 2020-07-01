puts " _____________"
puts " < datamanager >"
puts " -------------"
puts "         \   ^__^ "
puts "          \  (oo)\_______ "
puts "            (__)\       )\/\ "
puts "                ||----w | "
puts  "                ||     || "
puts  "            coded by polarspetroll ♥ "



puts "enter the service(eg:gmail,facebook,..) : "
service=gets.chomp
puts "enter your username : "
username=gets.chomp
puts "what is your password : "
password=gets.chomp
puts "<==check your data ==>"
puts "service : #{service} "
puts "username : #{username}"
puts "password : #{password}"
puts "is your data correct ? (Y/n)"
check=gets.chomp
while check != "Y" or check != "y" or check != "N" or check != "n"
  break if check == "Y" or check == "y" or check == "n" or check == "N"
puts "invalid option #{check} avalible options are Y/n"
check=gets.chomp
end
if check == "n" or check == "N"
abort "it's ok , run the program one more time and rewrite your data :)"
elsif check == "y" or check == "Y"
puts " all done  , your data saved in database.txt file , enjoy :)!!"
database=File.open("database.txt", "a")
  database.write("\n #{service} : #{username} , #{password}")
end
#there is database.txt file in the program folder , there is your saved data so take care of that file:)
