Feature: Siete y medio

Scenario: Abro el juego
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 2
 Then debo ver "<td id="puntajeJugador">7</td>"

Scenario: Abro el juego
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 4
 Then debo ver "<td id="puntajeJugador">9</td>"
  And debo ver "Resultado: PERDIO"

Scenario: Abro el juego
 Given Abro el juego
 When pido carta y saco 5
  And pido carta y saco 1
  And jugador se planta
 Then debo ver "<td id="puntajeJugador">6</td>"
  And debo ver "Jugador Actual: MAQUINA"

Scenario: Abro el juego
 Given Abro el juego
 Then debo ver "Resultado"

Scenario: Abro el juego
 Given Abro el juego
 Then debo ver "Jugador Actual"
