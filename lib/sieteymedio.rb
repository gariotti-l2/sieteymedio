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
		
		if @puntajeJugador>7.5
			plantarse
		end 
			
	end

	def pideCartaBanca
		if @proxCarta>9 
			@puntajeBanca += 0.5
		else
			@puntajeBanca += @proxCarta
		end 	
			
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
	
		if @jugadorActual=="MAQUINA"
			if @puntajeJugador<=7.5 and @puntajeJugador>0 and ((@puntajeJugador>@puntajeBanca and @puntajeBanca<=7.5) or (@puntajeBanca>7.5))  
				"GANO"
			else
				"PERDIO"
			end
		else
			"JUGANDO"
		end
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
