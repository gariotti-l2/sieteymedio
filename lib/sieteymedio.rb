class Juego

	def initialize
		@puntajeJugador = 0
		@puntajeBanca = 0
		@jugadorActual = "JUGADOR"
		@proxCarta = 0
	end

	def pideCarta
		if @proxCarta>9 
			@puntajeJugador += 0.5
		else
			@puntajeJugador += @proxCarta
		end 		
			
	end

	def pideCartaBanca
		if @proxCarta>9 
			@puntajeBanca += 0.5
		else
			@puntajeBanca += @proxCarta
		end 
		puts "Banca: " + @puntajeBanca.to_s		
			
	end


	def cartaActual
		@proxCarta
			
	end

	def puntajeJugador
		@puntajeJugador
	end

	def puntajeBanca
		@puntajeBanca
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
