require "csv"

class Deck
		# attr_accessor :deck_arr
		# def initialize#(deck_arr)
		# 	#@deck_arr = deck_arr
		# end

		def read_csv
			@deck_arr = []
			CSV.foreach("maraton_cards.csv","r") do |row|
		   	@deck_arr << Card.new(row[0],row[1])
			end
			@deck_arr
		end
end

class Card
	attr_accessor :question, :answer
	def initialize(question, answer)
		@question = question
		@answer = answer
	end

end