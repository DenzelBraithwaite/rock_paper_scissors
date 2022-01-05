#test
#----------Capitalizes user input----------#
def get_cap 
	gets.chomp.capitalize
end

#----------Initializes overall record----------#
player_record = 0
computer_record = 0

#----------Initializes scores----------#
player_score = 0
computer_score = 0

#----------Initializes choices----------#
player_choice = ''
computer_choice = ''

#----------Array for computer choices----------#
choices = ['Rock', 'Paper', 'Scissors']

#----------Game introduction----------#
puts "Version 1.3"; sleep(1.3); system("cls")
puts "\nWelcome,\n This is a simple game of Rock, Paper, Scissors.\n The first to win best 2 out of 3, wins!\n Good luck, and may the odds be ever in your favor."
sleep(3.5)
puts "\nPress enter to continue."
gets.chomp
system('cls')


#----------Initialize #{answer}. Game will loop until play again #{answer} == 'No'----------#
answer = ''
until answer == 'No'
	answer = '' #----------Reinitialize #{answer}, otherwise answer will remain 'Yes' and it'll create an infinite loop.----------#
	until player_score == 2 || computer_score == 2 #----------Best 2 out of 3----------#
		until player_choice == 'Rock' || player_choice == 'Paper' || player_choice == 'Scissors'
			system('cls')
			puts "Please choose:\n" ; sleep(0.75)
			puts "-Rock\n" ; sleep(0.3)
			puts "-Paper\n" ; sleep(0.3)
			puts "-Scissors\n" ; sleep(0.3)
			player_choice = get_cap
		end

		#----------Computer chooses an element from #{choices} array----------#
		computer_choice = choices.sample

		#----------Else if statements for each round result----------#
		system('cls')

		if player_choice == computer_choice
			puts "You both picked #{player_choice}, it's a tie! No points awarded."
		elsif player_choice == 'Rock' && computer_choice == 'Paper'
			puts 'Paper covers rock, sorry but you lose.'
			computer_score += 1
		elsif player_choice == 'Rock' && computer_choice == 'Scissors'
			puts 'Congrats! Rock smashes scissors, you win.'
			player_score += 1
		elsif player_choice == 'Paper' && computer_choice == 'Rock'
			puts 'Paper covers rock, you get a point!'
			player_score += 1
		elsif player_choice == 'Paper' && computer_choice == 'Scissors'
			puts 'Scissors cuts paper, you lose a point.'
			computer_score += 1
		elsif player_choice == 'Scissors' && computer_choice == 'Rock'
			puts 'Scissors does not cut rock, you lose.'
			computer_score += 1
		else player_choice == 'Scissors' && computer_choice == 'Paper'
			puts 'Scissors > Paper, congrats!'
			player_score += 1
		end
	
		#----------Resets #{player_choice}----------#
		player_choice = ''

		#----------Displays current score----------#
		sleep(2)
		puts "Player score: #{player_score}" ; sleep(1)
		puts "Computer score: #{computer_score}" ; sleep(2)
		system('cls')
	end

	if player_score == 2
		puts "HOORAY!!! you win!!"
		player_record += 1
	else computer_score == 2
		puts "Aww... seems the computer beat you this time."
		computer_record += 1
	end

	puts "Player record: #{player_record}" ; sleep(1)
	puts "Computer record: #{computer_record}" ; sleep(1)

	
	puts "\nPress enter to continue."
	gets.chomp
	
	
	#----------Prompts player to play again, loops if #{answer} == 'Yes'----------#
	until answer == 'Yes' || answer == 'No'
		system('cls')
		puts 'Would you like to play again?' ; sleep(1)
		puts '-Yes' ; sleep(0.5)
		puts '-No'
		answer = get_cap
	end
	
	unless answer == 'No'
		#----------Reinitializes scores----------#
		player_score = 0
		computer_score = 0
		system('cls')
		puts "Please choose:\n" ; sleep(0.75)
		puts "-Rock\n" ; sleep(0.3)
		puts "-Paper\n" ; sleep(0.3)
		puts "-Scissors\n" ; sleep(0.3)
		player_choice = get_cap
	end
end

system('cls');
puts 'Thank you for playing!'
sleep(3.5)
#----------Game finished----------#
