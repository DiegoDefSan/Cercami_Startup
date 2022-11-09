Feature: US08: Sección de pagos realizados a los inmuebles de los arrendadores

    Como arrendador quiero tener una pestaña personalizada en la que figure todos los pagos que se efectúan sobre el 
    inmueble que alquile para poder tener una mejor visión de mis finanzas

    Scenario: El arrendador ingresa a la pestaña de finanzas
        Given el usuario arrendador está ubicado en la pantalla principal
        And entra al apartado de “Mis inmuebles”
        When ingrese a la opción “Finanzas”
        Then se le mostrará una pestaña en la que se encuentren todos los pagos que se le han realizado con respecto a 
        los inmuebles que está alquilando

    Example:
        | ¿Ingresó a la sección "Mis inmuebles"? | ¿Ingresó a la sección "Finanzas"? | ¿Se desplega la interfaz de pagos? |
        |                    Si                  |                Si                 |                  Si                |
        |                    Si                  |                No                 |                  No                |
        |                    No                  |                No                 |                  No                |

    Scenario: El arrendador quiere más información de los pagos 
        Given el usuario arrendador se encuentra en la pestaña de “Finanzas” 
        And seleccione algún pago
        When le de click se le abrirá otra pestaña
        Then se mostrará información de dicho pago

    Example:
        | ¿Se encuentra en la pestaña de finanzas? | ¿Seleccionó algún pago? | ¿Se amplia la información? |
        |                     Si                   |           Si            |             Si             |
        |                     Si                   |           No            |             No             |
        |                     No                   |           No            |             No             |

    Scenario: El arrendador quiere ordenar los pagos dependiendo de filtros
        Given el usuario arrendador se encuentra en la pestaña de “Finanzas” 
        And seleccione la opción de filtros
        When ingrese los filtros que el arrendador quiera
        Then se ordenarán los pagos dependiendo de los filtros que se ha ingresado

    Example:
        | ¿Se encuentra en la pestaña de finanzas? | ¿Registro algun filtro? |  ¿Se ordenarán los pagos?  |
        |                     Si                   |           Si            |             Si             |
        |                     Si                   |           No            |             No             |
        |                     No                   |           No            |             No             |
    