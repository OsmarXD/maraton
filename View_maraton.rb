class MainView

	def start
		puts "¡Bienvenido al maratón Jaguar!"
		puts "Te daremos una pregunta y deberás adivinar la respuesta correcta."
		puts "Listo? Arranca el juego! presionando cualquier tecla"
	end

	def user_input
		gets.chomp
	end

	def question(card_question)
		puts card_question
		puts
	end

	def answer(bool)
		if bool
			puts "Correct!"
		else
			puts "Incorrect :("
		end
	end

	def game_over(counter_correct, counter_incorrect)
		puts "Tuviste #{counter_correct} correctas"
		puts "Tuviste #{counter_incorrect} incorrectas"
	end
end