Feature: US-12: Compartir publicación en su social media

    Como arrendatario quiero enviar el link de la publicación a otras redes sociales para así compartir mis intereses con mis amigos 
    Scenario:  Enviar link a Red Social elegida
        Given  el usuario se encuentre en la zona de publicaciones
        And elija la red social a enviar
        And presionar "enviar"
        When el arrendatario presione la opción de "share"
        Then le saldrá un mensaje de 'Mensaje'
    Examples:
        | Publicacion | Interacciones          |         Mensaje           |
        | Departamento Los Olivos | Compartir  | "publicación compartida"  |

    Scenario: Error de envío
        Given el usuario se encuentre en la zona de publicaciones
        And elija la red social a enviar
        And presione "enviar"
        And no se logre compartir
        When el arrendatario presione la opción de "share"
        Then le saldrá un mensaje de 'Mensaje'
    Examples:
        | Publicaciones            | Interacciones |              Mensaje                 |
        | Departamento Los Olivos  | Compartir     |"error de envío, verifica tu conexión"|
