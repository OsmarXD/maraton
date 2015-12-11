require "csv"

class Decks
	 def deck_collection(user_input)
	 	if user_input == "a"
			"geography"
		elsif user_input == "b"
	 	  "science"
	 	elsif user_input == "c"
	 		"general"
	 	elsif user_input == "d"
	 		"codea"
	 	else
	 		p "no tenemos ese deck"	
	  end
	end
end

class Deck
	def read_csv(deck_name)
		@deck_arr = []
		CSV.foreach("maraton_cards_#{deck_name}.csv","r") do |row|#"maraton_cards_geography.csv","r") do |row|
			arr = []
			arr << row[2] << row[3] << row[4]
		   @deck_arr << Card.new(row[0], row[1], arr)
		end
	  @deck_arr
	end
end

class Card
	attr_accessor :question, :answer, :options

	def initialize(question, answer, options)
		@question = question
		@answer = answer
		@options = options
	end

end