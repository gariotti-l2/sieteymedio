Feature: Siete y medio

Scenario: Abro el juego
 Given Abro el juego
 Then debo ver "Resultado"

Scenario: Juego 1
 Given Abro el juego
 Then debo ver "Jugador Actual"

Scenario: Juego 2
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 2
 Then debo ver "<td id="puntajeJugador">7</td>"

Scenario: Juego 3
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 4
 Then debo ver "<td id="puntajeJugador">9</td>"
  And debo ver "Resultado: PERDIO"

Scenario: Juego 4
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 1
  And jugador se planta
 Then debo ver "<td id="puntajeJugador">6</td>"
  And debo ver "Jugador Actual: MAQUINA"

Scenario: Juego 5
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 2
  And pido carta y saco 10
  And jugador se planta
 Then debo ver "<td id="puntajeJugador">7.5</td>"
  And debo ver "Jugador Actual: MAQUINA"

Scenario: Juego 6
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 2
  And jugador se planta
  And banca pide carta y saco 4
  And banca pide carta y saco 3
  And banca pide carta y saco 10
 Then debo ver "<td id="puntajeJugador">7</td>"
  And debo ver "<td id="puntajeBanca">7.5</td>"
  And debo ver "Resultado: PERDIO"


