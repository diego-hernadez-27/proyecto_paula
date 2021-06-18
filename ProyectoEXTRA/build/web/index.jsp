<%-- 
    Document   : index
    Created on : 13/06/2021, 10:27:45 PM
    Author     : alesj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
        <link rel="stylesheet" href="./css/estilos.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    </head>
    <body>
        <script src="js/main.js"></script>
        <form action="iniciar" method="post" id="forminicio">
                <img src="./img/Sistema.png" class="logoSis">
            <br>
            <div class="form">
            <h1>Iniciar Sesion</h1>
            <div class="grupo">
                <input type="text" name="usuario" pattern= "{1,25}" id="txtusuario" required><span class="barra"></span>
                <label for="">Nombre de usuario</label>
            </div>
            <div class="grupo">
                <input type="password" name="pass" pattern= "{1,25}" id="txtpass" required><span class="barra"></span>
                <label for="">Contraseña</label>
            </div>

            <button type="submit" value="Registrarme" id="btnregistrar">Iniciar Sesión</button>
            <br>
            <br>
            <center>¿No tienes una cuenta?<a href="registro.jsp">Registrarme</a></center>
            
            </div>
            
        </form>
    </body>
</html>
