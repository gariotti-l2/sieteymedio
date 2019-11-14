require 'sinatra'
require "./lib/sieteymedio.rb"

get '/' do
        @@juego = Juego.new
	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	@claseCarta= @@juego.claseCarta
	erb :index    
end

get '/dothings' do
	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	@claseCarta= @@juego.claseCarta
	erb :index    
end

post '/pidecarta' do	
	@@juego.pideCarta
	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	@claseCarta= @@juego.claseCarta
	erb :index   
end

post '/meplanto' do
	@@juego.plantarse
	@puntajeJugador= @@juego.puntajeJugador
	@puntajeBanca= @@juego.puntajeBanca
	@resultado= @@juego.resultado
	@cartaActual= @@juego.cartaActual
	@jugadorActual= @@juego.jugadorActual
	@claseCarta= @@juego.claseCarta
	erb :index   
end


