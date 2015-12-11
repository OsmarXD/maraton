require_relative "Model_maraton.rb"
require_relative "View_maraton.rb"

class MainController
	def initialize
		@decks = Decks.new
		@deck = Deck.new
		@view = MainView.new
 		game
 	end
 	
 	def read_input
 		@view.user_input
 	end

 	def read_csv(deck_name)
 		@deck.read_csv(deck_name)
 	end

	def start
		@view.start
	end

	def question(card_question)
		@view.question(card_question)
	end

	def options(card_options)
		@view.options(card_options)
	end

	def answer(bool)
		@view.answer(bool)
	end

	def game_over(counter_correct, counter_incorrect)
		@view.game_over(counter_correct, counter_incorrect)
	end

	def play_again?
		@view.play_again
		
		if read_input == 'SI'
			game
		else
			@view.adios
		end

	end
 	def game
 		counter_correct = 0
 		counter_incorrect = 0
 		start
 		#read_csv(@decks.deck_collection(read_input))
 		@cards = read_csv(@decks.deck_collection(read_input))
 		@cards.each do |card|
 			question(card.question)
 			options(card.options)
 			if read_input.include?(card.answer)#read_input == card.answer
 				answer(true)  #p "correct"
 				counter_correct += 1
 			else
 				answer(false)  #p "incorrect"
 				counter_incorrect += 1
 			end
 		end
 		game_over(counter_correct, counter_incorrect)
 	
 		play_again?
 	end
end


# Driver Code
MainController.new






