require 'colorize'
puts "___________________".blue
puts "< password manager >".red.bold
puts " ------------------".blue
puts "        .   ^__^".green
puts "         .  (oo)\_______".green
puts "            (__)\        )/ ".green
puts "               ||----w |".green
puts "               ||     ||".green

puts  "            coded by polarspetroll ♥ ".blue.bold



puts "enter the service(eg:gmail,facebook,..) : ".green
service=gets.chomp
puts "enter your username : ".green
username=gets.chomp
puts "what is your password : ".green
password=gets.chomp
puts "<==check your data ==>".blue.bold
puts "service : #{service} ".magenta
puts "username : #{username}".magenta
puts "password : #{password}".magenta
puts "is your data correct ? (Y/n)".yellow.bold
check=gets.chomp
while check != "Y" or check != "y" or check != "N" or check != "n"
  break if check == "Y" or check == "y" or check == "n" or check == "N"
puts "invalid option #{check} avalible options are Y/n".red.bold
check=gets.chomp
end
if check == "n" or check == "N"
abort "it's ok , run the program one more time and rewrite your data :)".blue
elsif check == "y" or check == "Y"
puts " all done  , your data saved in database.txt file , enjoy :)!!".green.bold
database=File.open("database.db", "a")
  database.write("\n  service : ss#{service} ==> #{username} , #{password}")
end
