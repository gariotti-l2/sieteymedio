require "./lib/sieteymedio.rb"

describe "Juego" do

	it "jugador pide carta, banca otorga 5, jugador pide carta, banca otorga 2, puntaje jugador suma 7" do
		juego=Juego.new
		juego.pideCarta 5
		juego.pideCarta 2
		expect(juego.puntajeJugador).to eq 7 
	end

end
