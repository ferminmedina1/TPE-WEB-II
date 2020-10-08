<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Viandita! - Log in</title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/consultas.css">
    <link rel="stylesheet" href="./css/responsive/responsive.css">
    <link rel="stylesheet" href="./css/responsive/responsive-consultas.css">
    <link rel="stylesheet" href="./css/log.css">
    <script type="text/javascript" src="./js/nav.js"></script>
    <script type="text/javascript" src="./js/captcha.js"></script>
    <base href="{$base_url}">
</head>

<body>

 <!-- ENCABEZADO -->
    
    {include file="encabezado.tpl"}

 <!-- MENU DE NAVEGACION -->

    {include file="nav.tpl"}
    
 <!-- FORMULARIO -->

    <article>

        <section class="contenedorform">

            <form class="formulario" action="verifyUser" method="post">

                <h1 class="subtitulo"> Logueate! <img src="./images/user.png" alt="user" id="userFormulario"></h1>
                
                <label class="itemformulario"> Email: </label> <input type="text" name="input_user">
                <label class="itemformulario"> Contraseña: </label> <input type="password" id="contra" name="input_pass">
                <a href="register" id="register">No tienes una cuenta? Crea una haciendo click aca!</a>
                <p id="avisoCaptcha">{$mensaje}</p>
                <button type="submit" id="botonEnviar" >ENTRAR</button>

            </form>

        </section>

    </article>

 <!-- FOOTER -->

    {include file="footer.tpl"}

</body>
</html>