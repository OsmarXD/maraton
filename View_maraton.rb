class MainView

	def start
		puts "¡Bienvenido al maratón Jaguar!"
		puts "Te daremos una pregunta y deberás adivinar la respuesta correcta."
		puts
		puts "a: Geografia"
		puts "b: Ciencia"
		puts "c: Cultura general"
		puts "d: el chido"
		puts
		puts "Selecciona el deck que más te guste!"
		puts "Listo? Arranca el juego!"
	end

	def user_input
		gets.chomp
	end

	def question(card_question)
		puts
		puts card_question
		puts
	end

	def options(card_options)
		puts "#{card_options[0]}"
		puts "#{card_options[1]}"
		puts "#{card_options[2]}"
	end

	def answer(bool)
		if bool
			puts "Correct! :D"
			puts
		else
			puts "Incorrect :("
			puts
		end
	end

	def game_over(counter_correct, counter_incorrect)
		puts "Tuviste #{counter_correct} correctas"
		puts "Tuviste #{counter_incorrect} incorrectas"
	end

	def play_again
		puts "¿Quieres jugar de nuevo?"
		puts "Escribe 'SI' o 'NO'"
	end

	def adios
		puts "OK Adios"
	end
end