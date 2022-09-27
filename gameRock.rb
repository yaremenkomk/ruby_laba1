	def bot_Chose (num1)

	if num1 == 1
		puts("Bot choose the Rock")
		elsif num1 == 2
		puts("Bot choose the scissors")
		else
		puts("Bot choose the paper")
		end
	end

	def main
		counter = 0
		while counter == 0 do
			puts ("\nHi! Choose your fighter typing number 1, 2 or 3.\n 1 - Rock\t2 - scissors\t3 - paper\t0 - leave the game")
			ourNumber = gets.chomp

			if ourNumber=="3" or ourNumber=="1" or ourNumber=="2" 
				ourNumber = ourNumber.to_i
				randomBotNumber = rand(1..3)
				numberCheck = ourNumber - randomBotNumber
				numberCheck.abs
				if ourNumber < randomBotNumber and numberCheck.abs!=2
					puts("You win!") 
				elsif ourNumber == randomBotNumber
					puts ("No one won")
				elsif ourNumber > randomBotNumber and numberCheck == 2
					puts("You win!")
				else
					puts("You lose")
				end
					
				bot_Chose(randomBotNumber)
					
			elsif ourNumber == "0"
			 	abort "goodbye"	 			
			else 
				puts ("Error. Wrong data. Try again")
				end	
			end 
	end

	main # laba1 by Yaremenko Maksym CS-44. Game "Rock paper scissors"

