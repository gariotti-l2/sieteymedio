class Juego

	def initialize
		@puntajeJugador = 0
		@puntajeBanca = 0
		@jugadorActual = "JUGADOR"
		@jugando = true
		@proxCarta = 0
		@mocking=false
	end

	def pideCarta
		
		if not @mocking			
			sorteaProximaCarta
		end

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
		
		if not @mocking			
			sorteaProximaCarta
		end

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
				@jugando=false
				return "GANO"
				
			else
				@jugando=false
				return "PERDIO"
				
			end
		else
			return "JUGANDO"
		end
	end

	def plantarse
		@jugadorActual = "MAQUINA"

		if not @mocking 
			while @jugando do
	
				if @puntajeJugador>@puntajeBanca
				   sorteaProximaCarta
				   pideCartaBanca
				else
					break
				end

			end
		end 

	end

	def jugadorActual
		@jugadorActual
	end

	def sorteaProximaCarta
		arr = [1,2,3,4,5,6,7,10,11,12]
		@proxCarta = arr[rand(arr.count)]
	end

	def proximaCarta proxCarta
		@mocking=true
		@proxCarta = proxCarta
	end

	def jugando
		@jugando
	end

end
