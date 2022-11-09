Feature: US01: Sincronización con google calendar
    Como arrendatario quiero conectar las citas con
    los arrendadores con google calendar para visualizarlo rápidamente
    
    
    Scenario: Sincronizar mi cuenta de google.
    Given el usuario arrendatario desea vincular su cuenta de google
    When cree su cuenta en la aplicación debe elegir la opción de "Registrarse" con su cuenta de google
    Then podrá vincular su cuenta de google a través de su gmail. 

    Examples:
        | Registrase              |
        | Crear cuenta con Google | 
        | Crear cuenta con Correo | 


    Scenario: Añadir mi correo gmail a mi cuenta de la aplicación
    Given el usuario arrendador quiere sincronizar sus notificaciones con su google calendar
    When el usuario ingrese a "configuración" y a "Actualizar de datos" 
    Then le aparecerá la opción de "Añadir correo" 
    Then el sistema le pedirá que registre sesión con su cuenta, en este caso de google
    And después seleccione en "Sincronizar con google calendar"
    And le apartecerá un mensaje de proceso exitoso = "Mensaje"
    Then él podrá ver las notificaciones de citas que tenga programada con los arrendadores

    Examples:
        | Configuración    |  Actualizar Datos | Sincronizar con google calendar | Mensaje               |
        | Actualizar Datos | Añadir correo     | cuenta gmail                    | Sincronizaste tu cuenta exitosamente |


    Scenario: Redirigir a google calendar
    Given el usuario arrendatario ya sincronizó con éxito sus notificaciones con google calendar
    When desee ingresar de manera directa a google calendar, sólo tendrá que seleccionar la opción 
    "Visualizar Calendario" y seleccionar desde "Google Calendar"
    Then el usuario será redirigido a la página del calendario de google. 

        Examples:
        | Configuración           |    Visualizar Calendario    | 
        | Visualizar Calendario   |   Google calendar           | 