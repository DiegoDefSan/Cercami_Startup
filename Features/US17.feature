Feature: Registro mediante cuenta Google

    Como usuario quiero registrarme con mi cuenta de google para tener un acceso más fácil.

    Scenario: Creación de cuenta a través de Google
        Given el usuario se encuentre en el apartado de Registrarse
        And seleccione la opción de "Registrarse con Google"
        When ingrese los datos de su cuenta de Google correctamente
        And configure correctamente los datos para la creación de su usuario
        And presione el botón "Crear cuenta"
        Then se creará una cuenta nueva vinculada a su cuenta de Google
    
    Examples:
        |         Cuenta Registrada              |
        |Nombre | Apellido | Usuario | Contraseña|
        | Luis* | Guerra*  | @LuiGU4 |***********|

    Scenario: Inicio de sesión a través de Google
        Given el usuario se encuentre en el apartado de Inicio de sesión
        And seleccione la opción de "Iniciar sesión con Google"
        When ingrese los datos de su cuenta de Google correspondiente
        Then ingresará a la aplicación

      Examples:
        |                Sesion iniciada                            |
        | Iniciaste sesion con tu cuenta de google de "Luis Guerra" |