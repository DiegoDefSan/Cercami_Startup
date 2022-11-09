Feature: US22: Estadística de interacción

    Como arrendador quiero visualizar con estadísticas la interacción de mis clientes con mis inmuebles para llevar una mejor administración.


    Scenario: Visualizar estadística
    Given el arrendador desea visualizar la estadística de interacción 
    When  ingrese a "publicaciones"
    And  luego seleccione la tuerca ("configuración")
    Then aparecerá una opción "Ver estadística"
    When el usuario seleccione ello podrá visualizar los datos que le refleja la estadística. 
    Examples:
        | Publicaciones                 |  Configuración    |      Ver estadística             |
        | Departamento 30x20 Breña      | Ver estadística   | Dpto San Isidro 25x25  1600 views|
        | Departamento 25x25 San Isidro |                   | Dpto Breña 30x20 1000 views  |


    Scenario: Filtrar por distrito las estadísticas de interacción 
    Given el usuario arrendador desea filtrar la interacción de sus inmuebles por distritos
    When  ingrese a "publicaciones"
    And  luego seleccione la tuerca ("configuración")
    Then aparecerá una opción "Ver estadística", después le aparecerá la opción "filtrar"
    When presione "filtrar" le aparecerá la opción "Distritos"
    And cuando lo seleccione podrá ver la lista de distritos que tiene inmuebles publicados
    When seleccione el distrito le aparecerá su respectiva estadística.

    Examples:
        | Publicaciones                 |  Configuración  | Filtrar              |      Ordenar por Distritos       |
        | Departamento 30x20 Breña      | Ver estadística | Ordenar por Distritos|Dpto Breña 30x20 1000 views       |
        | Departamento 25x25 San Isidro |                 |                      |Dpto San Isidro 25x25  1600 views |

