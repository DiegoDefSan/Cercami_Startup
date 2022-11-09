Feature: US-09: Manipulación de publicaciones mediante interacciones

Como arrendatario quiero comentar y solicitar información acerca de una vivienda para poder llegar a un acuerdo con el dueño

    Scenario:  Elige la vivienda que le gusta para comentar una publicación 
        Given el arrendatario se encuentra en la página de búsqueda de viviendas
        And selecciona su vivienda elegida 
        And despliega hacía la parte de interacción en la página
        When el arrendatario selecciona el ícono de su preferencia de interacción
        Then el arrendatario podrá colocar la interacción de comentario en el formulario que se desplegará 
        And se le mostrará el mensaje de 'Mensaje'
    Examples:
        | Publicación              | Interacciones         |         Mensaje        |
        | Departamento Los Olivos  | Comentar publicación  | "Comentario agregado"  |

    Scenario:  Elige la vivienda que le gusta para solicitar información 
        Given el arrendatario se encuentra en la página de búsqueda de viviendas
        And selecciona su vivienda elegida
        And despliega hacia la ventana de información general 
        And selecciona "abrir chat con arrendador"
        When el arrendatario escoge el botón de "abrir chat" de dueños de viviendas
        Then el arrendatario podrá ver la información de la vivienda y chatear personalmente con el dueño del inmueble de su interés
        And se le muestra el mensaje de 'Mensaje'
    Examples:
        | Publicación             | Interacciones             |         Mensaje        |
        | Departamento Los Olivos | Abrir chat con arrendador | "Comenzó chat en vivo" | 
