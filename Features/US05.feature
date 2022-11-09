Feature: US05: Notificaciones de futuro pago al arrendador

  Como arrendador quiero recibir notificaciones de recordatorio de los inmuebles que precisan 
  ser pagados para administrar mejor mi economía.

  Scenario: Recordatorio por notificaciones
    Given el arrendador haya configurado los recordatorios de sus inmuebles en alquiler
    And sea el momento para que reciba el recordatorio configurado
    When el arrendador reciba la notificación
    And  seleccione la opción "Pago recibido"
    Then el inquilino del inmueble habrá efectuado el pago correspondiente
    And se registra 'Nombre del alquiler', 'Monto', 'Fecha', 'Hora' y 'Morosidad' en el historial de pagos
  
  Examples:
      | Nombre del alquiler |  Monto  |    Fecha   |  Hora  | Morosidad |
      |   "El dulce hogar"  |  950.00 | 28/04/2022 |  20:00 |    No     |
      |  "La mirada azul"   |  880.00 | 01/05/2022 |  01:32 |    Sí     |


  Scenario: Postergar recordatorio
    Given el arrendador haya configurado los recordatorios de sus inmuebles en alquiler
    And sea el momento para que reciba el recordatorio configurado
    When el arrendador reciba la notificación
    And seleccione la opción "Aplazar"
    And ingrese el tiempo de postergación en 'Notificarme en'
    Then el recordatorio se posterga hasta que se cumpla el tiempo configurado
    And aparece un mensaje de confirmación = 'Mensaje'
  
  Examples:
      | Notificarme en |         Mensaje         |
      |   15 minutos   | Recordatorio postergado |
      |   30 minutos   | Recordatorio postergado |


  Scenario: Activar o desactivar notificaciones de recordatorio
    Given el arrendador haya configurado los recordatorios de sus inmuebles en alquiler
    When el arrendador se encuentre en la sección "Recordatorios"
    And seleccione el recordatorio a modificar
    And active/desactive las notificaciones del recordatorio en 'Status'
    Then la configuración del recordatorio es modificado
    And aparece el mensaje = 'Mensaje'
  
  Examples:
      |     Status     |          Mensaje         |
      |    Activado    |   Recordatorio activado  |
      |   Desactivado  | Recordatorio desactivado |


