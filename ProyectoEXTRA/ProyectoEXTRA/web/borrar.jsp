<%-- 
    Document   : borrar
    Created on : 16/06/2021, 10:30:54 PM
    Author     : 25666
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Usuario</title>
        <link rel="stylesheet" href="./css/estilos.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    </head>
    <body>
       <script src="js/main.js"></script>
        <form action="borrar" method="post" id="forminicio">
            <div class="form">
            <h1>Borrar Usuario</h1>
            
            <h4>Cuidado, esta acción es irreversible, le recomendamos pesar bien si quiere borrar su usuari</h4>
            
            <div class="grupo">
                <input type="text" name="usuario" pattern= "{1,25}" id="txtusuario" required><span class="barra"></span>
                <label for="">Nombre de usuario</label>
            </div>
            <div class="grupo">
                <input type="password" name="pass" pattern= "{1,25}" id="txtpass" required><span class="barra"></span>
                <label for="">Contraseña</label>
            </div>

            <button type="submit" value="Borrar" id="btnregistrar">Borrar</button>
            
            </div>
            <center><a href="perfil.jsp">Regresar al perfil</a></center>
        </form>
       
       
    </body>
</html>
