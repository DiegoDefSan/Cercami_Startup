Feature: Colocar ubicación del inmueble en la publicación

    Como arrendador quiero colocar la ubicación de mi inmueble en la publicación para dar a conocer la cercanía de mi vivienda a la universidad.

    Scenario: Ingresar la ubicación de manera escrita.
        Given que el usuario arrendador se encuentra en el formulario de la publicación
        When presione el textbox del apartado "ubicación:"
        And rellene el campo con la ubicación de su inmueble
        Then se desplegará el mapa de google maps con la ubicación ingresada de manera manual en espera de la confirmación del usuario
    
    Examples:
        |    Ubicacion      |         Universidad cercana              | Sede       |  
        | Av. La Marina 345 | Universidad Peruana de Ciencias Aplicadas| San Miguel |
        |                   | Universidad Nacional Mayor de San Marcos | Unica      |

    Scenario: Ingresar la ubicación con la ubicación del teléfono.
        Given el usuario arrendador se encuentra en el formulario de llenado de la publicación
        When  presione el botón  "Añadir esta ubicación"
        And conceda el permiso a la app de "usar ubicación"
        And tenga activa la "ubicación" de su teléfono celular
        Then se desplegará el mapa de google con la ubicación del teléfono en espera de la confirmación del usuario
    
    Examples:
        |    Ubicacion GPS del celular   |         Universidad cercana              | Sede       |  
        | Av. La Marina 345              | Universidad Peruana de Ciencias Aplicadas| San Miguel |
        |                                | Universidad Nacional Mayor de San Marcos | Unica      |