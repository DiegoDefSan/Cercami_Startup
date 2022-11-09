Feature: Actualización de datos

    Como arrendatario quiero actualizar mi número de contacto para que los arrendadores 
    puedan contactarse

    Scenario: El usuario ingresa a la sección “Mis perfil”
        Given el usuario se encuentra en la pantalla principal de la aplicación
        And el usuario visualiza el apartado “Mi perfil”
        When ingrese a “Mi perfil”
        Then se le desplegará una pestaña en donde se encuentran todos sus datos

    Scenario: El usuario actualiza su foto de perfil
        Given el usuario se encuentra en el apartado “Mi perfil”
        When el usuario seleccione la opción “Actualizar datos”
        And elija la opción “Actualizar mi número de teléfono”
        Then se desplegará una interfaz en la que se podrá llevar a cabo la actualización
        del número telefónico del usuario
    
