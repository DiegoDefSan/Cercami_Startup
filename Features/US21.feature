Feature: US-21: Recepción de hoja de  vida

    Como arrendador quiero recibir una hoja de vida completa y actualizada para conocer un poco más a mis clientes
    Scenario:  El arrendador solicita la hoja de vida de su posible arrendatario
        Given  el arrendador visita la sección de "Mis inmuebles"
        And verifica las notificaciones por casa o departamento con solicitantes disponibles
        And se le despliega el formulario con todos los detalles del futuro arrendador
        And selecciona el apartado de “Ver hoja de vida”
        When el arrendador ingrese a "mis inmuebles"
        Then se le desplegará una pestaña secundaria con toda la información del futuro arrendador
        And se le mostrará un mensaje que diga 'Mensaje'
    Examples:
        | Buscar      | Mis inmuebles|        Arrendatarios       |
        | Óscar López | Información  | "Hoja de vida solicitada"  |

    Scenario: Visualizar y rechazar clientes según su hoja de vida
        Given el arrendador visita la sección de solicitantes para una casa
        And empiece a ver las hojas de vida de los usuarios
        When el arrendador no le interese alguna hoja de vida
        Then el arrendador podrá descartar a los usuarios
        And se le mostrará un mensaje que diga 'Mensaje'
    Examples:
        | Buscar       | Mis inmuebles    |             Arrendatarios               |
        | Ósacr López  | Solicitud        | "arrendatario rechazado correctamente"  |

