Feature: US02: Notificaciones del arrendatario

  Como arrendatario quiero recibir notificaciones de recordatorio del inmueble que debo 
  pagar para efectuar el pago en la fecha adecuada.


  Scenario: Recordatorio por notificaciones
    Given el arrendatario haya configurado los recordatorios de sus inmuebles en alquiler
    And sea el momento para que reciba el recordatorio configurado
    When el arrendador reciba la notificación
    And seleccione la opción "Pago efectuado"
    Then el pago se ha efectuado
    And se registra 'Nombre del alquiler', 'Monto', 'Fecha' y 'Hora' en el historial de pagos
  
  Examples:
      | Nombre del alquiler |  Monto  |    Fecha   |  Hora  |
      |   "El sol bonito"   | 1200.00 | 30/10/2022 |  19:26 |
      |   "La bella casa"   |  800.00 | 15/08/2022 |  12:20 |
  
  
  
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
  
