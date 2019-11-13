require 'sinatra'
require "./lib/sieteymedio.rb"

get '/' do
	juego=Juego.new
	juego.pideCarta 5
	juego.pideCarta 4
	juego.plantarse
	@puntajeJugador=juego.puntajeJugador
	@resultado=juego.resultado
	@jugadorActual=juego.jugadorActual
	erb :index    
end
