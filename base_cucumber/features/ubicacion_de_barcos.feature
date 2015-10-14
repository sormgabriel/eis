Feature:Ubicacion de barcos
  Como usuario
  quiero ubicar mis barcos

  @wip  
  Scenario:Ubico mi barco exitosamente 
    Given:un tablero vacio
    When:cuando ubico un barco destructor en la posicion A1
    Then:lo ubico exitosamente
  @wip
  Scenario:No se puede ubicar un barco en una posicion ya ocupada
    Given:un barco destructor  ubicado en la posicion A1
    When:quiero ubicar un submarino  en la posicion A2
    Then:no se puede ubicar el barco
  @wip
  Scenario:No puedo ubicar mi barco en una posicion fuera del tablero
    Given:un tablero que vacio
    When:quiero ubicar mi barco en la posicion A11
    Then:la posicion esta fuera del tablero

