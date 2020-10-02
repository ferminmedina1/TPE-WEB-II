<?php
    require_once('app/viandasController.php');
    require_once('routerClass.php');
    
    // CONSTANTES PARA RUTEO
    define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

    $r = new Router();

    // rutas
    $r->addRoute("home", "GET", "viandasController", "Home"); // ($url, $verb(GET/POST), $controller, $method(Funcion))

    $r->addRoute("viandas", "GET", "viandasController", "Viandas"); // ($url, $verb(GET/POST), $controller, $method(Funcion))

    $r->addRoute("promociones", "GET", "viandasController", "Promo"); // ($url, $verb(GET/POST), $controller, $method(Funcion))

    $r->addRoute("contacto", "GET", "viandasController", "Contacto"); // ($url, $verb(GET/POST), $controller, $method(Funcion))

    $r->addRoute("sobremiviandita", "GET", "viandasController", "Sobre"); // ($url, $verb(GET/POST), $controller, $method(Funcion))
    
    $r->addRoute("consultas", "GET", "viandasController", "Consultas"); // ($url, $verb(GET/POST), $controller, $method(Funcion))

    $r->addRoute("ilvero", "GET", "viandasController", "Ilvero");
    
    $r->addRoute("login", "GET", "viandasController", "Log"); // ($url, $verb(GET/POST), $controller, $method(Funcion))

    $r->addRoute("register", "GET", "viandasController", "Register"); // ($url, $verb(GET/POST), $controller, $method(Funcion))

    $r->addRoute("verTodos", "GET", "viandasController", "mostrarTodas");
   
    $r->addRoute("categoria/:TIPO_VIANDA","GET", "viandasController", "mostrarPorCategoria");

    $r->addRoute("adminViandas", "GET", "viandasController", "AdminViandas");

    $r->addRoute("agregarVianda", "POST", "viandasController", "ingresarVianda");

    $r->addRoute("agregarCategoria", "POST", "viandasController", "nuevaCategoria");

    //ELIMINAR
    $r->addRoute("elimiarVianda/:ID", "GET", "viandasController", "eliminarVianda");

    $r->addRoute("elimiarCategoria/:ID", "GET", "viandasController", "eliminarCategoria");

    //EDITAR

//FALTA TERMINAR
    $r->addRoute("editarVianda/:ID", "GET", "viandasController", "showFormEditar");
//FALTA TERMINAR
    $r->addRoute("editarCategoria/:ID", "GET", "viandasController", "editarCategoria");

    


    //Ruta por defecto.
    $r->setDefaultRoute("viandasController", "Home");
    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
?>