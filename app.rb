require 'sinatra'
require "./lib/sieteymedio.rb"

get '/' do
	juego=Juego.new
	juego.pideCarta 5
	juego.pideCarta 2
	@puntajeJugador=juego.puntajeJugador
	@resultado=juego.resultado
	erb :index    
end
