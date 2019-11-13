class Juego

	def initialize
		@puntajeJugador = 0
	end

	def pideCarta valorCarta
		@puntajeJugador += valorCarta
	end

	def puntajeJugador
		@puntajeJugador
	end

	def resultado
		"PERDIO"
	end
	

end
