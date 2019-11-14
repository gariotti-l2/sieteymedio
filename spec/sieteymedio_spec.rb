require "./lib/sieteymedio.rb"

describe "Juego" do

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 2, puntaje jugador suma 7, el jugador esta jugando" do
		juego=Juego.new
		juego.proximaCarta 5
		juego.pideCarta
		juego.proximaCarta 2
		juego.pideCarta
		expect(juego.puntajeJugador).to eq 7 
		expect(juego.resultado).to eq "JUGANDO" 
	end

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 4, puntaje jugador suma 9, jugador pierde" do
		juego=Juego.new
		juego.proximaCarta 5
		juego.pideCarta
		juego.proximaCarta 4
		juego.pideCarta
		expect(juego.resultado).to eq "PERDIO" 
	end

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 1, jugador se planta, puntaje jugador suma 6, cambia el turno" do
		juego=Juego.new
		juego.proximaCarta 5
		juego.pideCarta
		juego.proximaCarta 1
		juego.pideCarta
		juego.plantarse
		expect(juego.puntajeJugador).to eq 6
		expect(juego.jugadorActual).to eq "MAQUINA" 
	end

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 2, jugador pide carta, banca otorga 10, jugador se planta, puntaje jugador suma 7.5, cambia el turno" do
		juego=Juego.new
		juego.proximaCarta 5
		juego.pideCarta
		juego.proximaCarta 2
		juego.pideCarta
		juego.proximaCarta 10
		juego.pideCarta				
		juego.plantarse
		expect(juego.puntajeJugador).to eq 7.5
		expect(juego.jugadorActual).to eq "MAQUINA" 
	end

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 2, jugador se planta, banca pide carta, otorga 3, banca pide carta, otorga 4, resultado banca 7, resultado juador 7, jugador pierde" do
		juego=Juego.new
		juego.proximaCarta 5
		juego.pideCarta
		juego.proximaCarta 2
		juego.pideCarta
		juego.plantarse
		juego.proximaCarta 3
		juego.pideCartaBanca				
		juego.proximaCarta 4
		juego.pideCartaBanca	
		juego.proximaCarta 10
		juego.pideCartaBanca	
		expect(juego.cartaActual).to eq 10
		expect(juego.puntajeBanca).to eq 7.5
		expect(juego.puntajeJugador).to eq 7
		expect(juego.resultado).to eq "PERDIO" 
	end

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 2, jugador se planta, banca pide carta, otorga 5, banca pide carta, otorga 4, resultado banca 9, resultado juador 7, jugador gana" do
		juego=Juego.new
		juego.proximaCarta 5
		juego.pideCarta
		juego.proximaCarta 2
		juego.pideCarta
		juego.plantarse
		juego.proximaCarta 5
		juego.pideCartaBanca				
		juego.proximaCarta 4
		juego.pideCartaBanca
		expect(juego.puntajeBanca).to eq 9
		expect(juego.puntajeJugador).to eq 7
		expect(juego.resultado).to eq "GANO" 
	end

end
