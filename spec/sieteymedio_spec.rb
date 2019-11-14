require "./lib/sieteymedio.rb"

describe "Juego" do

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 2, puntaje jugador suma 7" do
		juego=Juego.new
		juego.proximaCarta 5
		juego.pideCarta
		juego.proximaCarta 2
		juego.pideCarta
		expect(juego.puntajeJugador).to eq 7 
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

end
