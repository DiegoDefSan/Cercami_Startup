Scenario: US11: Búsqueda de publicaciones

    Como arrendatario quiero hacer una búsqueda para poder encontrar un inmueble que se 
    adapte a mis necesidades

    Scenario: El usuario arrendatario realiza una búsqueda
        Given el usuario arrendatario se encuentra en la pantalla principal
        And selecciona la barra de búsqueda
        When el arrendatario ingrese los datos de búsqueda y le a “Buscar”
        Then le muestra una pestaña con diferentes publicaciones con respecto a su búsqueda
    
    Example:
        |    Barra de busqueda    |                          Resultado                            |
        |    Plaza San Miguel     | "Hogar acogedor con vista a parques y cerca de universidades" |
        |       Los olivos        |      "Alquiler de maravilla, a 2 cuadras de plaza norte"      |
    
    Scenario: El usuario aplica filtros en su búsqueda
        Given el arrendatario se encuentra en la barra de búsqueda
        When el arrendatario le ingrese al apartado de “Filtros”
        And aplique los filtros que vea necesarios
        Then se le mostrará una pestaña con diferentes publicaciones de acuerdo a los filtros
        que se le aplicó

    Example:
        |             filtros          |    ¿Se ordenará?    |
        |   Ordenar de menor a mayor   |         Si          |
        |   Ordenar de mayor a menor   |         Si          |
        |            Ninguno           |         No          |


        