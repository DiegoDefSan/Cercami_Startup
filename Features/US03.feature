Feature: US03: Notificación cuando el contrato del inmueble culmine    

    Como arrendatario quiero que se me notifique cuando el contrato del inmueble haya culminado 
    para poder renovar o buscar otro alquiler.

    Scenario: Activacion de las notificaciones
        Given el usuario quiera recibir notificaciones
        And quiera configurar dichas notificaciones
        When el usuario ubique la pesaña de Configuracion
        And ingrese al apartado de Notificaciones
        And pulse el boton de Activar
        Then las notificaciones flotantes seran activadas mostrando el mensaje “Notificaciones activadas” 

    Example:
        |       ¿Desea activar las notificaciones?     |            Mensaje              |
        |                       Si                     |    Notificaciones activadas     |

    Scenario: Notificaciones dias antes que termine el contrato
        Given el usuario haya activado las notificaciones de de la aplicacion
        And el contrato con el inmueble alquilado este por culminar
        When la aplicacion, guiada por algoritmos, determine el momento preciso para enviar dicha
        notificacion
        Then se le enviara una notificacion flotante que indique dicho hecho

    Example:
        |   Fecha de culminacion del contrato   |   Fecha actual    |                                          Notificacion                                          | 
        |              12/08/22                 |     7/08/22       |"Su contrato esta por terminar, ponerse en contacto con el arrendador o encuentre otro inmueble"|   

    Scenario: Notificacion de contrato terminado
        Given el usuario haya activado las notificacion de la aplicacion
        And el contrato con el inmueble haya culminado
        When la aplicacion, guiada por algoritmos, determine el momento preciso para enviar dicha
        notificacion
        Then se le enviara una notificacion flotante que indique dicho hecho

    Example:
         |   Fecha de culminacion del contrato   |   Fecha actual    |                                          Notificacion                                          | 
         |              12/08/22                 |     12/08/22      |   "Su contrato a culminado, ponerse en contacto con el arrendador o encuentre otro inmueble"   |



                                