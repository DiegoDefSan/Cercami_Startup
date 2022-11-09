Feature: Colocar las características físicas del inmueble

    Como arrendador quiero colocar las características físicas de la vivienda en la publicación para brindar mayor información del inmueble que estoy rentando. 

    Scenario: Añadir el tamaño del inmueble 
        Given el usuario arrendador se encuentra en el apartado de características del inmueble
        When presione el textbox de "m²"
        And ingrese el número de metros cuadrados del 
        Then se añadirá la medida en m² del inmueble.

    Examples:
        | m² del inmueble |
        |     70          | 

    Scenario: Añadir la cantidad de dormitorios del inmueble
        Given el usuario arrendador se encuentra en el apartado de características del inmueble
        When presione el botón "Añadir habitación"  
        And coloque el espacio de la habitación en m²
        And coloque si tiene baño propio o no
        And coloque características adicionales como  # de muebles, #de sockets, # de ventanas
        Then se desplegará una visualización previa de las características añadidas en espera de la confirmación.
    
    Examples:
        | habitación |   m²  |  baño | ventanas|
        |     1      |   6   |  si   |    2    |
        |     2      |   5   |  no   |    1    |

    Scenario: Añadir la cantidad de baños del inmueble
        Given el usuario arrendador se encuentra en el formulario de características del inmueble
        When presione el botón "Añadir baño" 
        And coloque la ubicación del baño en el inmueble
        And coloque el espacio del baño en m²
        Then se desplegará una visualización previa de las características añadidas en espera de la confirmación

    Examples:
        |    baño    |   m²  |     Ubicacion     |
        |     1      |   4   |  Bajo la escalera |