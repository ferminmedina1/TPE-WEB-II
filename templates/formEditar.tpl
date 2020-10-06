<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Viandita! - Administracion - Editar</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/consultas.css">
    <link rel="stylesheet" href="../css/responsive/responsive.css">
    <link rel="stylesheet" href="../css/responsive/responsive-consultas.css">
    <script type="text/javascript" src="../js/nav.js"></script>
    <base href="{$base_url}">
</head>

<body>

 <!-- ENCABEZADO -->
    
    <header>

        <div class="encabezado">

            <div class="tituloYlogo">
                
                <a href="home"><img src="../Images/LOGO2.png" alt="MiViandita!" class="logoEncabezado"></a>
            
                <h1 class="titulo"> Mi Viandita!</h1>

            </div>

            <input type="checkbox" id="btn-menu">
            <label for="btn-menu" class="icon-menu"><img src="../Images/menu.png" class="imagenMenu"></label>
       
        </div>
        
    </header>

 <!-- MENU DE NAVEGACION -->

    <nav>

        <div class="menu">
            <a href="home" class="item">Home</a>
            <a href="viandas" class="itemPrincipal">Viandas</a>
            <a href="promociones" class="item">Promociones </a>
            <a href="contacto" class="item">Contacto</a>
            <a href="sobremiviandita" class="item">Sobre Mi Viandita</a>
        </div>

    </nav>


 <!-- FORMULARIO -->

    <article>

        <section class="contenedorform">

            {foreach from=$vianda item=viandaAnterior}
            <form class="formulario" method="post" action="actualizarVianda/{$viandaAnterior->id_vianda}">
                <h1 class="subtitulo"> EDITA LA VIANDA:  {$viandaAnterior->nombre}</h1>
                <label class="itemformulario"> Nombre: </label> <input type="text" name="nombre" placeholder="Anteriormente era: {$viandaAnterior->nombre}">
                <label class="itemformulario"> Precio: </label> <input type="number" name="precio"  placeholder="Anteriormente era: {$viandaAnterior->precio}">
                <label class="itemformulario"> Tipo de vianda: (Anteriormente era: {$viandaAnterior->tipo_vianda})</label> 
                    <select name="dirigidoA" id="select">
                        {foreach from=$tipo item=categoria}
                            <option value="{$categoria->id_dirigidoA}">{$categoria->tipo_vianda}</option>
                        {/foreach}
                    </select>
                <label class="itemformulario"> Nueva descripcion: </label> <textarea type="text" name="descripcion" placeholder="Anteriormente era: {$viandaAnterior->descripcion}"></textarea>
                {/foreach}

                <button type="submit" id="botonEnviar">Actualizar!</button>

            </form>

        </section>

    </article>


 <!-- PIE DE PAGINA -->

    <footer>
        <a> Diseño Web || Fermín Medina || Agustín Arleo </a>
        <a> © Mi Viandita 2020. Todos los derechos reservados.</a>
        <a href="ilvero" class="ilvero"> Il Vero</a>
    </footer>

</body>
</html>