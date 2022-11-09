Feature: US07: Eliminación de notificaciones del arrendador

  Como arrendador quiero eliminar los recordatorios registrados para dejar de 
  recibir notificaciones que no sean necesarias.

  Scenario: Eliminar un recordatorio manualmente
    Given el arrendador se encuentre en el apartado de recordatorios registrados
    When seleccione un recordatorio = 'Nombre del alquiler'
    And escoja la opción "Eliminar recordatorio"
    And confirme la eliminación del recordatorio
    Then el recordatorio es eliminado del apartado de recordatorios registrados
    And se traslada al apartado de "Recordatorios eliminados"
    And el arrendador recibe el mensaje = 'Mensaje' “Recordatorio eliminado”
  
  Examples:
      | Nombre del alquiler |         Mensaje         |
      |  "El dulce hogar"   |  Recordatorio eliminado |


  Scenario: Eliminar un recordatorio automáticamente
    Given el arrendador haya configurado los recordatorios de sus inmuebles en alquiler
    And el inmueble haya sucedido del estado <<En alquiler>> a <<Por alquilar>>
    When el arrendador confirme que el inmueble ya no se encuentra alquilado en '¿El presente inmueble se encuentra sin inquilino?'
    Then el recordatorio se elimina del apartado de recordatorios registrados
    And se traslada al apartado de "Recordatorios eliminados"
    And el arrendador recibe la notificación = 'Notificación'
  
  Examples:
      | ¿El presente inmueble se encuentra sin inquilino? |       Notificación       |
      |                        Sí                         |  Recordatorio eliminado  |


  Scenario: Restaurar un recordatorio eliminado
    Given el arrendador se encuentre en el apartado de "Restaurar recordatorios"
    And el recordatorio a restaurar haya sido eliminado hace no más de 30 días
    When el arrendador seleccione la opción de "Restaurar"
    Then el recordatorio es trasladado al apartado de recordatorios registrados
    And se elimina del apartado de "Recordatorios eliminados"
    And el arrendador recibe la notificación = 'Notificación'
  
  Examples:
      |       Notificación       |
      | Recordatorio restaurado  |


  Scenario: Eliminación automática del recordatorio
    Given el arrendador haya eliminado un recordatorio
    When haya transcurrido 30 días desde su eliminación
    Then el recordatorio se elimina del apartado de "Recordatorios eliminados"
  

