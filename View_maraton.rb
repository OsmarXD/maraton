class ViewMain

	def start
		puts "¡Bienvenido al maratón Jaguar!"
		puts "Te daremos una pregunta y deberás adivinar la respuesta correcta."
		puts "Listo? Arranca el juego!"
	end

	def question(question)
		puts "#{question}"
		gets.chomp
	end

	def answer(answer)
		puts "Correct!"
		puts "Incorrect :("
	end

	def attempt(attempt)
		
	end

	def game_over
		
	end

end