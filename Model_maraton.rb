require "csv"

class Deck
		attr_accessor :deck_arr
		def initialize(deck_arr)
			@deck_arr = deck_arr
		end
end

class Card
	attr_accessor :question, :answer
	def initialize(question, answer)
		@question = question
		@answer = answer
	end
end