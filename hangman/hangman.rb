def our_word_initialise
	all_words = %w(god mouse phone book fireplace column width maksym strike window microwave laptop eclipse black dumbass)
	all_words.sample
end 

hangman_word = our_word_initialise


our_word = ''
hangman_word.split('').each do	
	our_word += "_"
end

attempts = hangman_word.length + 3

game_condition_check = false

while !game_condition_check

	guessed = true

	if attempts > 0
		print "\nOur word have #{hangman_word.length} letters and you have #{attempts} attempts.  #{our_word}\n Put your letter: "
		user_letter = gets.chomp 

		hangman_word.split('').each_with_index do |letter, letter_index|
			if user_letter == letter
				our_word[letter_index] = letter
				guessed = false	
			end 
		end 

		if guessed == true
		puts "Wrong letter :#{user_letter}" 
			attempts -= 1
		end	
	else  
		puts "Sorry. You lose. The word is: #{hangman_word}"	
		game_condition_check = true
	end

	if !our_word.include? "_"
		puts " You win. The finish word is: #{hangman_word}"
		game_condition_check = true
	end

end
