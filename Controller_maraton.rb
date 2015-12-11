require_relative "Model_maraton.rb"
require_relative "View_maraton.rb"

class MainController
	def initialize
		@deck = Deck.new
		@view = MainView.new
 		@cards = read_csv
 		@compare = game
 	end
 	
 	def read_input
 		@view.user_input
 	end

 	def read_csv
 		@deck.read_csv
 	end

	def start
		@view.start
	end

	def question(card_question)
		@view.question(card_question)
	end

	def answer(bool)
		@view.answer(bool)
	end

	def game_over(counter_correct, counter_incorrect)
		@view.game_over(counter_correct, counter_incorrect)
	end

 	def game
 		counter_correct = 0
 		counter_incorrect = 0
 		start
 		read_input
 		@cards.each do |card|
 			question(card.question)
 			if read_input == card.answer
 				answer(true)  #p "correct"
 				counter_correct += 1
 			else
 				answer(false)  #p "incorrect"
 				counter_incorrect += 1
 			end
 		end
 		game_over(counter_correct, counter_incorrect)
 	end
end


# Driver Code
MainController.new






