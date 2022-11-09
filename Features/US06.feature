Feature: US06: Edición de notificaciones del arrendador

  Como arrendador quiero editar los recordatorios registrados para diferenciarlos de 
  otro tipo de notificaciones

  Scenario: Editar los recordatorios registrados
    Given el arrendador se encuentre en el apartado de recordatorios registrados
    When seleccione un recordatorio = 'Nombre del alquiler'
    And escoja la opción "Editar"
    And realice los respectivos cambios en 'Sonido', 'Vibración' y 'Aplazar'
    And seleccione la opción "Guardar cambios"
    Then el recordatorio se guarda con las nuevas configuraciones
    And aparece el mensaje = "Mensaje"

  Examples:
      | Nombre del alquiler |     Sonido     | Vibración |        Mensaje        |
      |   "El dulce hogar"  |  Personalizado | Encendido |  Modificado con éxito |
      |   "La mirada azul"  |     Default    |  Apagado  |  Modificado con éxito |


  Scenario: Eliminar los cambios en un recordatorio
    Given el arrendador se encuentre en el apartado de recordatorios registrados
    When seleccione un recordatorio = 'Nombre del alquiler'
    And escoja la opción "Editar"
    And seleccione la opción "Eliminar cambios realizados"
    Then el recordatorio es modificado con la configuración previa
    And es guardado con los cambios
    And aparece el mensaje = 'Mensaje'

  Examples:
      | Nombre del alquiler |        Mensaje        |
      |   "El dulce hogar"  |  Modificado con éxito |
      |   "La mirada azul"  |  Modificado con éxito |