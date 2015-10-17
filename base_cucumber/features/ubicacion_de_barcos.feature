Feature: 
  como usuario
  quiero ubicar mis barcos
       

  Scenario: ubico mi barco exitosamente
    Given un tablero vacio
    When ubico un barco destructor en la posicion 1A
    Then barco ubicado exitosamente

  
  Scenario: no se puede ubicar un barco en una posicion ya ocupada 
    Given un barco destructor ubicado horizontalmente en la posicion 1A
      And un barco destructor ocupa cuatro casilleros
    When intento ubicar una lancha en la posicion 2A
    Then no se puede ubicar un barco en una posicion ya ocupada


  Scenario: no puedo ubicar mi barco en una posicion fuera del tablero
    Given un tablero que va de la posicion 1 a la 10 y de la A a la J 
    When intento ubicar un barco destructor horizontalmente desde la posicion 7A a la 11A
    Then no se puede ubicar el barco en esa posicion fuera del tablero
