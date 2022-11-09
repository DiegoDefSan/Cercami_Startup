Feature: US19: Registrar tarjeta 
    Como usuario quiero registrar mi tarjeta sólo 1 vez
    en la plataforma para que pueda usarla en el momento de pago agilizando el proceso de volver a escribir mis datos

    Scenario:  Usuario desea registrar tarjeta por primera vez
    Given el usuario desea registrar su tarjeta de crédito o débito
    When el usuario ingrese a "Perfil" 
    And seleccione "Medio de pago "
    And seleccione "Registrar Tarjeta"
    Then se le pedirá datos sensibles de la tarjeta a través de una pasarela de pago
    When  se seleccione "Guardar" quedará grabada la tarjeta para futuras compras.
    And le aparecerá un mensaje para confimar el proceso="Mensaje"

    Examples:
        | Perfil        |  Medio de pago    | Mensaje                           |
        | Medio de pago | Registrar Tarjeta | Guardaste tu tarjeta exitosamente |
        | Medio de pago | Eliminar Tarjeta  |                                   |


    Scenario: Usuario guarda tarjeta al realizar primera compra
    Given el usuario desea comprar a través del aplicativo
    When  seleccione el producto que desee en la sección "Tienda"
    And seleccione el carrito de compras 
    And la opción "Terminar pedido"
    Then el usuario tendrá que ingresar sus datos personales
    And se le pedirá los datos de su tarjeta 
    Then le aparecerá la opción "Recordar" y la seleccione y le de en "Pagar"
    And le aparecerá un mensaje de confirmación = "Mensaje"
    Then la tarjeta quedará guardada para futuras compras

    Examples:
        | Tienda                     |  Terminar pedido    |          |  Mensaje         |
        | Sofa Mediterraneo (Promart)|  Ingrese N tarjeta  | Recordar | Tarjeta Guardada |
        | Juego de comedor (Sodimac) |  Ingrese vencimiento| Pagar    | Pago Exitoso     |


    Scenario:  Usuario añade otra tarjeta
    Given el usuario desea añadir una nueva tarjeta, 
    When el usuario ingrese a "Perfil" y seleccione "Medio de pago"
    Then le aparecerá los datos de las tarjetas guardadas, la opción "Eliminar" y una opción "Añadir"
    When el usuario seleccione la última opción 
    Then se le pedirá datos sensibles de la tarjeta a través de una pasarela de pago
    When se seleccione "Guardar" quedará añadida la tarjeta para futuras compras.
    And le aparecerá un mensaje para confimar el proceso="Mensaje"

    Examples:
        | Perfil        |  Medio de pago    | Mensaje                           |
        | Medio de pago | Agregar Tarjeta   | Agregaste tu tarjeta exitosamente |
        | Medio de pago | Eliminar Tarjeta  |                                   |

    Scenario:   Usuario elimina tarjeta
    Given el usuario desea eliminar una tarjeta 
    When el usuario ingrese a "Perfil" y seleccione "Medio de pago"
    Then le aparecerá los datos de las tarjetas guardadas, la opción "Eliminar" y una opción "Añadir"
    When  el usuario seleccione "Eliminar Tarjeta" se le mostrará la lista de tarjetas guardadas
    When  elija la tarjeta aparecerá la opción "Eliminar" y cuando lo seleccione aparecerá el mensaje "¿Está seguro?" presione "Sí" o "No"
    And seleccione "Sí", se eliminará exitosamente la tarjeta.
    And le aparecerá un mensaje para confimar el proceso="Mensaje"

    Examples:
        | Perfil        |  Medio de pago    | Selecciona tarjeta | Mensaje                 |Mensaje
        | Medio de pago | Agregar Tarjeta   |  7895456xxxxxxx13  | ¿Está seguro? "Sí"- "No"|Eliminaste tu tarjeta exitosamente 
        | Medio de pago | Eliminar Tarjeta  |  6548436xxxxxxx16  |






