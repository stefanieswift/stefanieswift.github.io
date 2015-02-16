class Lottery 

#The Powerball drawing the other day was worth 500 million dollars this week.
#While I cannot offer a prize like that, it is always fun to play the lottery.
#You may have noticed that instead of creating a method, we are making a class.
#You want to create a class for organizal purposes to keep your code clean. 

	def initialize 

		# This method is the first ruby executes when you run the object or class. 

		@basic_numbers = Array.new(5.times.map{rand(1..59)})	
		@main_number = Array.new(1.times.map{rand(1..35)})
		@lottery_card = []
		@lottery_card << @basic_numbers
		@lottery_card << @main_number

		#These are instance variables which means that
		#they can be called from each of the methods
		#created inside of a class.
		#The '@' sign is what distinguishes them.
	end

	def card
		p @lottery_card
		#p @lottery_card will print the new combined arrayd
	end

	def drawing
		@drawing = Array.new(5.times.map{rand(1..59)})
		@win_number = Array.new(1.times.map{rand(1..35)})
		@winning_card = []
		@winning_card << @basic_numbers
		@winning_card << @win_number
		p @winning_card

		#In this method we are creating another method to figure out
		#winning numbers from the drawing.

	end

	def circle
		drawing #this calls drawing so we don't have to in our tests
		@lottery_card[0].map do |x|
			if 
				x == @drawing.any?
				x = "O"
			else
				@lottery_card[0]
			end
		end
		@lottery_card[1].map do |x|
			if 
				x == @win_number.any?
				x = "O"
			else
				@lottery_card[1]
			end
		end
		puts "Did you win? Your marked card:"
		card #this will print our new card

		#This is marking how many you got
	end

	def winner?
		circle #calls circle to display the board
		if lottery_card.join("") == "OOOOOO"
			puts "You win!"
		else
			puts "Try again next week!"
		end
	end

	#This is comparing our lottery card number to the winning numbers
end

#Driver test codes - these are to ensure that our tests are working
play = Lottery.new
play.card #prints the card drawing
play.winner? #figures out if we won








