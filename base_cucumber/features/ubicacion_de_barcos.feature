Feature: 
  como usuario
  quiero ubicar mis barcos
       
  Background: 
    Given un tablero que va de 1 a 10 y de A a J
    And un barco destructor ocupa 3 casillas
    And un barco crucero 2 casillas
    And un barco submarino 1 casilla 

  Scenario: ubico mi barco exitosamente
    Given un tablero vacio
    When ubico un barco destructor en la posicion 1A
    Then barco ubicado en la posicion 1A

 
@wip
  Scenario: no se puede ubicar un barco en una posicion ya ocupada 
    Given un barco destructor ubicado horizontalmente en la posicion 1A
      And un barco destructor ocupa cuatro casilleros
    When intento ubicar una lancha en la posicion 2A
    Then la posicion 2A esta ocupada

@wip
  Scenario: no puedo ubicar mi barco en una posicion fuera del tablero
    Given un tablero que va de la posicion 1 a la 10 y de la A a la J 
    When intento ubicar un barco destructor horizontalmente desde la posicion 7A a la 11A
    Then la posicion 11A esta fuera del tablero
