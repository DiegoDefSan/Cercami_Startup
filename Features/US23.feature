Feature: US23: Filtro de arrendatarios por clasificación 
    
    Como arrendador quiero filtrar a los arrendatarios de acuerdo a la calificación que le brinden sus arrendadores anteriores para elegir mejor a mis inquilinos. 

    Scenario: Arrendador filtra arrendatarios respecto a su calificación
    Given el arrendador desea buscar arrendatarios con calificaciones aceptables para alquilarle una vivienda
    When seleccione la opción "Buscar" y "Filtrar" 
    Then  tendrá que elegir entre "Arrendatario" y "Arrendador"
    When el usuario seleccione ello podrá visualizar los datos que le refleja la estadística. 
    Then le aparecerá por automático el orden de mayor a menor calificación de los arrendatarios.

    Examples:
        | Buscar   |  Filtrar      |       Arrendatario       |  
        | Filtrar  |  Arrendatario | Pedro Jimenez 4.9 puntos | 
        |          |  Arrendador   | Rafael Soto   3.6 puntos | 


    Scenario: Filtrar calificación por distrito
    Given el usuario arrendador desea modificar los filtros pre- seleccionador
    When seleccione la opción "Buscar" y "Filtrar" 
    Then tendrá que elegir entre "Arrendatario" y "Arrendador"
    Then le aparecerá las opciones de filtro y tendrá una opción de "Distrito" 
    When seleccione la opción le aparecerá los distritos de lima, tendrá que seleccionar uno 
    And  luego presionar "Filtrar"
    Then se le mostrará en orden descendente los arrendatarios con mayor calificación del distrito que busque. 

    Examples:
        | Buscar   |  Filtrar      | Arrendatario        | Filtrar  Arrendatario Por distrito   |  
        | Filtrar  |  Arrendatario | Filtrar Por distrito| Romina Ramirez Breña                 | 
        |          |  Arrendador   |                     | Rafaela SotoMayor   San Miguel       | 

