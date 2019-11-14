require 'sinatra'
require "./lib/sieteymedio.rb"

get '/' do
        @@juego = Juego.new
	@puntajeJugador= @@juego.puntajeJugador
	@resultado= @@juego.resultado
	@jugadorActual= @@juego.jugadorActual
	erb :index    
end

post '/pidecarta' do
	@@juego.pideCarta
	@puntajeJugador= @@juego.puntajeJugador
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	erb :index   
end

post '/meplanto' do
	@@juego.plantarse
	@puntajeJugador= @@juego.puntajeJugador
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	erb :index   
end
