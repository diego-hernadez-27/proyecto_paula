<%-- 
    Document   : registro
    Created on : 13/06/2021, 11:15:54 PM
    Author     : alesj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarme</title>
        <link rel="stylesheet" href="./css/estilos.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
        <script src="js/main.js"></script>
    </head>
    <body>
        
        <form action="registrar" method="post" id="formregistrar">
            <div class="form">
            <h1>Registro</h1>
            <div class="grupo">
                <input type="text" name="nombre" pattern= "{1,25}" id="txtnombre" required><span class="barra"></span>
                <label for="">Nombre</label>
            </div>
            <div class="grupo">
                <input type="text" name="apellido" pattern= "{1,25}" id="txtapellido" required><span class="barra"></span>
                <label for="">Apellido Paterno</label>
            </div>
            <div class="grupo">
                <input type="email" name="correo" pattern= "{1,40}" id="txtcorreo" required><span class="barra"></span>
                <label for="">Email</label>
            </div>
            <div class="grupo">
                <input type="number" name="edad" min="1" pattern= "^[0-9]+{1,2}" id="txtedad" required><span class="barra"></span>
                <label for="">Edad</label>
            </div>
            <div class="grupo">
                <input type="text" name="usuario" pattern= "{1,25)" id="txtusuario" required><span class="barra"></span>
                <label for="">Nombre de usuario</label>
            </div>
            <div class="grupo">
                <input type="password" name="pass" id="txtpass" required><span class="barra"></span>
                <label for="">Contraseña</label>
            </div>

            <button type="submit" value="Registrarme" id="btnregistrar">Registrar</button>
            <br>
            <br>
            <center>¿Ya tiene cuenta?<a href="index.jsp">Iniciar Sesión</a></center>
        </div>
        </form>
    </body>
</html>
