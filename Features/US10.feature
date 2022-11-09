Feature: US-10: Manipulación de publicaciones mediante preferencias

    Como arrendatario quiero configurar mis publicaciones de mis favoritos para así poder pedir la información más tarde

    Scenario:  Elige la publicación a guardar como favorito
        Given el arrendatario se encuentra en el formulario de las publicaciones
        And elige su publicación de interés
        And hace click en la imagen
        When el arrendatario elige la opción de "guardar en favoritos"
        Then se mostrará un mensaje de "Mensaje" 
    Examples:
        |      Publicacion      |       Accion            |           Mensaje          |
        |Departamento individual|         Guardar         |  "Se guardo correctamente" |
        |        Duplex         |         Guardar         |  "Se guardo correctamente" |
    

    Scenario: Elige la publicación a eliminar de sus favoritos
        Given el arrendatario se encuentra en el formulario con sus publicaciones guardadas
        And elige su publicación de interés a eliminar
        And hace click en la imagen
        When el arrendatario escoge opción de eliminar de la lista de favoritos
        Then el arrendatario visualizará el mensaje de "Mensaje"
        Examples:
            |     Publicacion       |       Accion             |         Mensaje           |
            |Departamento individual|       Guardar            | "Publicación eliminada"   |
            |          Duplex       |       Guardar            | "Publicación eliminada"   |
    