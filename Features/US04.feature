Feature: US04: Notificaciones por pagos pendientes con el inmueble

    Como arrendador quiero que se me notifique sobre pagos pendientes sobre el inmueble para poder 
    efectuar dichos pagos.

    Scenario: Activacion de las notificaciones
        Given el usuario quiera recibir notificaciones
        And quiera configurar dichas notificaciones
        When el usuario ubique la pesaña de Configuracion
        And ingrese al apartado de Notificaciones
        And pulse el boton de Activar
        Then las notificaciones flotantes seran activadas

    Example:
        |       ¿Desea activar las notificaciones?     |            Mensaje              |
        |                       Si                     |    Notificaciones activadas     |

    Scenario: Notificar los pagos  pendientes
        Given el usuario quiere recibir notificaciones sobre los pagos pendientes con el inmueble
        And tenga activada las notificaciones flotantes
        When un pago está sin saldar
        And ya se esta por vencer
        Then se le enviará una notificación flotante de pagos pendientes

    Example:
        | ¿Existen pagos sin saldar del inmueble? | Fecha de vencimiento | Fecha Actual |                 Notificacion                | 
        |                   Si                    |       12/08/22       |    6/08/22   | "Presenta pagos pendientes con el inmueble" | 

    Scenario: el usuario ingresa a la notificación
        Given el usuario haya pulsado en la notificación
        When dicha notificación lo redireccione a la app
        Then Se le mostrará una interfaz en la que se muestren todos los gastos que aun no estan 
        saldados hasta la fecha

    Example:
        | ¿Ingresa a la notificación? | ¿Se desplega la interfaz de pagos? |   
        |             Si              |                Si                  | 
        |             No              |                No                  | 

