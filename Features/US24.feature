Feature: US24: Registro de comentarios como arrendador

    Como arrendador quiero registrar los comentarios que tengo respecto a mis arrendatarios para que otros arrendadores puedan guiarse respecto a su trato.

    Scenario: El usuario arrendador comparte su experiencia con el arrendatario
    Given el arrendador quiere comentar en el perfil del arrendatario la experiencia de la vivienda que le alquiló
    When  el arrendador busque e ingrese al perfil del arrendatario
    And  selecciones "Calificar" 
    And  el aplicativo verifique que sí llegaron a un acuerdo para la vivienda
    Then podrá escribir y calificar al arrendatario, cuyo comentario será público.
    And le aparecerá un mensaje para confimar el proceso="Mensaje"


    Examples:
        | Calificar             |   Mensaje              |
        | Compartir experiencia | Experiencia compartida |
    Scenario: Arrendador visualiza calificación y comentarios respecto a un arrendatario
    Given  el arrendador desea verificar la experiencia de otros arrendadores con el arrendatario 
    When  usuario seleccione la opción "Buscar" e ingrese el nombre del posible arrendatario 
    Then e aparecerá su perfil y podrá visualizar los comentarios que tiene 
    And  podrá ver los comentarios qué otros arrendadores le dejaron seleccionando la opción "Ver Comentarios"
    
    Examples:
        | Buscar            |  Ver Comentarios    |
        | Ingrese el nombre | Puntual en sus pagos y respetuoso | 
        |Filtrar            | Muy buen inquilino, lo recomiendo | 