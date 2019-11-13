class Juego

	def initialize
		@puntajeJugador = 0
		@jugadorActual = "JUGADOR"
		@proxCarta = 0
	end

	def pideCarta
		@puntajeJugador += @proxCarta
			
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
	def proximaCarta proxCarta
		@proxCarta = proxCarta
	end

end
