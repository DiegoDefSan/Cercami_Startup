Feature: Colocar contenido multimedia en la publicación del inmueble

    Como arrendador quiero colocar fotos y videos en mi publicación para dar a conocer el ambiente que estoy alquilando.
    
    Scenario: Colocar fotos de la galería en la publicación.
        Given usuario arrendador se encuentra en el formulario de llenado de la publicación 
        And ya tenga las fotos tomadas
        When presione el botón "Añadir fotos" 
        And salga una ventana emergente donde aparezcan las fotos de su dispositivo
        And seleccione las fotos
        And las fotos seleccionadas se carguen a nuestra nube
        And el usuario aplique edición de recortes u otro tipo
        And de en el botón de confirmar
        Then se mostrará un mensaje “Las fotos se añadieron correctamente”

    Examples:
        |   Fotos   |   Formato    | Previsualizar  |
        |     1     | imagen1.png  |   click_aqui   |
        |     2     | imagen2.png  |   click_aqui   |

    Scenario: Tomar fotos y subirlas.
        Given el usuario arrendador se encuentra en el formulario de llenado de la publicación
        When presione el botón "Tomar y Añadir fotos"
        And se active la aplicación de la cámara
        And el usuario tome la foto al lugar
        And el usuario termine de añadir tomar todas las fotos
        And se suban automáticamente
        And el usuario confirme
        Then se mostrará un mensaje “Las fotos se añadieron correctamente”
    
    Examples:
        |   Fotos   |   Formato        | Previsualizar  |
        |     1     | fotocamara1.png  |   click_aqui   |
        |     2     | fotocamara2.png  |   click_aqui   |