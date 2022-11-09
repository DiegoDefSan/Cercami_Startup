Feature: Colocar el precio del inmueble
    
        Como arrendador quiero colocar el precio de mi inmueble en mi publicación para proporcionar el valor de alquiler de mi vivienda.

        Scenario: Asignar la moneda.
            Given el usuario arrendador se encuentra en la opción de ingresar el precio del inmueble
            When el usuario de click en el apartado de moneda
            And seleccione la moneda que va a utilizar
            And permita la conversión de la moneda a las tarifas del mercado
            Then se cambiará la moneda y se añadirán las tarifas de cambio en la publicación

        Examples:
            |    Moneda    | País  |
            | Nuevos Soles | Perú  |

        Scenario: Colocar el precio
            Given el usuario arrendador se encuentra en la opción de ingresar el precio
            Cuando  el usuario de click en el textbox de "ingrese monto"
            And tenga una moneda definida
            And haya tipeado el monto que desea colocar para alquilar el inmueble
            Then se añadirá el precio con la moneda elegida a la publicación.

        Examples:
            | Precio alquiler|    Moneda   |
            |       800      | Nuevos Soles|