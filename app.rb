require 'sinatra'
require "./lib/sieteymedio.rb"

get '/' do
        @@juego = Juego.new
	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	erb :index    
end

get '/dothings' do
	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	erb :index    
end

post '/pidecarta' do
	p_carta= params["proximaCarta"]	

	if p_carta.nil?
		@@juego.sorteaProximaCarta
	else
		@@juego.proximaCarta p_carta.to_i
	end

	@@juego.pideCarta
	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	erb :index   
end

post '/meplanto' do
	@@juego.plantarse

	p_auto= params["auto"]	

	if p_auto.nil?
		while @@juego.jugando do
	
			if @@juego.puntajeJugador>@@juego.puntajeBanca
			   @@juego.sorteaProximaCarta
			   @@juego.pideCartaBanca
			else
				break
			end

		end
	end

	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	erb :index   
end


