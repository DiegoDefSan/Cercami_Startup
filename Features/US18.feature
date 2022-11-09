Feature: Registro según el tipo de usuario

    Como usuario quiero registrarme con el tipo de usuario arrendatario o arrendador para utilizar los apartados de cada tipo de usuario.

    Scenario: Escoger el tipo de usuario
        Given el usuario se encuentra en el apartado de registro
        When escoja su tipo de usuario
        Then se mostrará será para el tipo de usuario elegido

    Examples:
        |            Registro existoso                |
        |Se registro con el tipo de usuario ARRENDADOR|
    
    Scenario: Dar permisos como usuario arrendador
        Given el usuario se encuentra finalizando el apartado de registro
        When acepte su tipo de usuario
        And conceda los permiso de acceso a la camara
        And conceda permiso de acceso a la ubicación 
        Then se dará acceso a todos beneficios del usuario arrendador

    Examples:
        |            Permisos              |
        |        acceso a la camara        |
        |          acceso al GPS           |
        |    acceso a añadir publiaciones  |