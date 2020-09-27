<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Viandita! - Viandas</title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/viandas.css">
    <link rel="stylesheet" href="./css/responsive/responsive.css">
    <link rel="stylesheet" href="./css/responsive/responsive-viandas.css">
    <script type="text/javascript" src="./js/nav.js"></script>
    <script type="text/javascript" src="./js/tabla.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

 <!-- ENCABEZADO -->
    
    <header>

        <div class="encabezado">

            <div class="tituloYlogo">
                
                <a href="home"><img src="./images/LOGO2.png" alt="MiViandita!" class="logoEncabezado"></a>
            
                <h1 class="titulo"> Mi Viandita!</h1>

            </div>

            <input type="checkbox" id="btn-menu">
            <label for="btn-menu" class="icon-menu"><img src="./images/menu.png" class="imagenMenu"></label>
       
        </div>
        
    </header>

 <!-- MENU DE NAVEGACION -->

    <nav>

        <div class="menu">
            <a href="home" class="item">Home</a>
            <a href="#" class="itemPrincipal">Viandas</a>
            <a href="promociones" class="item">Promociones </a>
            <a href="contacto" class="item">Contacto</a>
            <a href="sobremiviandita" class="item">Sobre Mi Viandita</a>
        </div>

    </nav>

    <h2 class="tituloAllCategorias">TIPOS DE VIANDAS </h2>
    <div class="categoriasAll">
        {foreach from=$tipo item=categoria}
        
            <a href="#" class="categoria">{$categoria->tipo_vianda}</a>
        
        {/foreach}
             <a  href="verTodos" class="verTodas">Ver Todas</a>
    </div>



















 <!-- CUERPO DE PAGINA -->
  <!--
    <article>
     
       

        <section class="contenedorVianda">

            <img src="./images/milanesa.jpg" alt="Milanesa" class="fotoComida">

            <div class="plato">
                <h2 class="subtitulo"> La gran milanesa:</h2>
            </div>

            <div class="descripcionViandas">
                <p>Te presentamos la "gran milanesa", hecha con ingredientes de primera calidad. Este combo
                    viene con una porcion de papas y una milanesa de carne para una persona, ideal para un buen almuerzo.
                </p>
            </div>

            <h2 class="precio">$150</h2>

        </section>

        

        <section class="contenedorVianda">

            <img src="./images/vianda vegana.jpg" alt="vianda vegana" class="fotoComida">

            <div class="plato">
                <h2 class="subtitulo"> Vianda vegetariana:</h2>
            </div>

            <div class="descripcionViandas">
                <p>La "vianda vegetariana" es lo nuevo de la casa, tenemos opciones para todos los gustos. Incluye 
                    zanahoria, tomate, lechuga y rucula, no te quedes sin la tuya!!!
                </p>
            </div>

            <h2 class="precio">$100</h2>

        </section>

        
        <section class="contenedorVianda">
            
            <img src="./images/vianda pasta.jpg" alt="vianda fideos" class="fotoComida">

            <div class="plato">
                <h2 class="subtitulo"> Fideos con salsa:</h2>
            </div>

            <div class="descripcionViandas">
                <p> Lo ideal para matar este frio es comer unos ricos fideos con salsa y como siempre en Mi viandita!
                    tenemos para ofrecerte lo mejor. Para hacer tu pedido podes encontrarnos en la seccion "contactos".
                </p>
            </div>

            <h2 class="precio">$120</h2>

        </section>

    </article>



    <section class="tabla">

        <form>

                <div class="agregarAtabla">

                    <div class="inputsPrincipales">
                    <a class="textoInput"> Vianda: <input type="text" id="producto"> </a>
                    <a class="textoInput"> Precio:  <input type="number" id="precio"> </a>
                    </div>

                    
                        <div class="filtro">
                            <input type="checkbox" id="btn-celiacos">
                            <label for="btn-celiacos" class="celiacos">Para celiacos</label>
                        </div>
                    <div class="botonera">
                        <div class="botones">
                        <button type="button" id="agregar" >Agregar vianda</button>
                        <button type="button" id="agregar3" >x3</button>
                        <button type="button" id="vaciarTabla">Vaciar tabla</button>
                        </div>

                        <div class="verFiltro">
                            <a class="filtroText">Para todos</a>
                        <input type="checkbox" id="btn-filtro">
                        <label for="btn-filtro" class="icon-filtro"></label>
                        <a class="filtroText">Para celiacos</a>
                        </div>

                    </div>

                </div>

        </form>

        

        <table>
            <thead>
                <tr>
                    <th>Vianda nueva</th> <th>Precio</th><th>Total</th><th>Borrar/Editar</th>
                </tr>
            </thead>
            <tbody id="carrito">
            </tbody>
        </table>

    </section>-->

 <!-- BOTON CONSULTAS -->

    <section class="section-consultas">
        <a class="botonLogueo" href="login"> Logueate <img src="./images/user.png" alt="user.img" class="imagenConsultas"></a>
        <a class="botonConsultas" href="consultas"> Consultas</a>
    </section>

 <!-- PIE DE PAGINA -->

    <footer>
        <a> Diseño Web || Fermín Medina || Agustín Arleo </a>
        <a> © Mi Viandita 2020. Todos los derechos reservados.</a>
        <a href="./Ilvero/Ilvero" class="ilvero"> Il Vero</a>
    </footer>

</body>
</html>