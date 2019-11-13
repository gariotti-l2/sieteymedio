class Juego

	def initialize
		@puntajeJugador = 0
		@jugadorActual = "JUGADOR"
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

	def plantarse
		@jugadorActual = "MAQUINA"
	end

	def jugadorActual
		@jugadorActual
	end
	

end
