=begin
- Design a script that creates a user profile
from gets
- Design a veterinarian program
- program uses classes, and methods.
- person info, pet info, attending vet 	
=end


class Petinfo

	def initialize
	
	end

	def questionnaire
		puts "Good afternoon!"
		puts "Please complete this brief pet profile."
		puts "What is your pets name?"
		print ">> "
			@@pname = gets.chomp

		puts "Thank you!"
		puts "How much does your pet weigh?"
		print ">> "
			@pweight = gets.chomp

		puts "What is the species of your pet?"
		print ">> "
			@species = gets.chomp

		puts "How old is #{@@pname}?"
		print ">> "
			@page = gets.chomp.to_i


		puts "What kind of #{@species} is #{@@pname}?"
		print ">> "
			@whatkind = gets.chomp

			
		puts "What is #{@@pname}'s owners name?"
		print ">> "
			@@powner = gets.chomp

		puts "Thank you!"

		puts "Here's a lttle funfact:"

		if @species == "dog" 
			@page = @page * 7
			puts "#{@@pname} is #{@page} yrs old in human years."
		elsif @species == "cat" && @page >= 3
			@page = (@page - 2) * 4 + 25 
			puts "#{@@pname} is #{@page} yrs old in human years."
		elsif @species == "cat" && @page == 2
			@page = 25
			puts "#{@@pname} is #{@page} yrs old in human years."		
		else @species == "cat" && @page == 1
			@page = 15
			puts "#{@@pname} is #{@page} yrs old in human years."
		end 	

		puts "Thank you for being patient."
		puts "Please wait while we process your answers."
		sleep 6
	end	



	def owner
		puts "#{@@powner} please provide the address for #{@@pname}."
		print ">> "
			
			@address = gets.chomp

		puts "Thank you!"

		puts "We will forward our newsletter and check up request for #{@@pname} to #{@address}."

		sleep 3
	end	

	def attending_vet
		puts "What is your reason for coming in today?"
		puts 
		sleep 2

print <<TEXT
1 - Routine check up or unknown issue
2 - Ingested poison or Swallowed a foriegn object
3 - Hit by a motor vehicle or Animal attack 
TEXT

		print ">> "
			reason = gets.chomp.downcase
			if reason == "1" 
				puts "Your veterinarian will be Dr. Blaine"
			elsif reason == "2"
				puts "Your veterinarian will be Dr. Gregorey"
			else reason == "3"
				puts "Your veterinarian will be Dr. Joyville"
			end	

	sleep 2				
		puts "The vet will be with you shortly."

	sleep 2	

		puts "Thank you #{@@powner} for completing #{@@pname}'s pet profile."

	end

end


vet = Petinfo.new
vet.questionnaire
vet.owner
vet.attending_vet




