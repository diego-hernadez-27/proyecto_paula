<%-- 
    Document   : actualizar
    Created on : 16/06/2021, 10:30:39 PM
    Author     : 25666
--%>

<%@page import="Modelo.mousuario"%>
<%@page import="Controlador.consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    HttpSession objsesion = request.getSession(false);
    String usuario = (String)objsesion.getAttribute("usuario");
    
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }
    
    mousuario u = consultas.buscar(usuario);

    u.setUsuario(usuario);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
        <link rel="stylesheet" href="./css/estilos.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
        <script src="js/main.js"></script>
    </head>
    <body>
        <form action="actualizar" method="post" id="formregistrar" >
            <div class="form">
            <h1>Actualizar Datos de Usuario</h1>
            <div class="grupo">
                <input type="text" name="nombre" pattern= "{1,25}" id="txtnombre" value="<%out.print(u.getNombre());%>" required><span class="barra"></span>
                <label for="">Nombre</label>
            </div>
            <div class="grupo">
                <input type="text" name="apellido" pattern= "{1,25}" id="txtapellido" value="<%out.print(u.getApellido());%>" required><span class="barra"></span>
                <label for="">Apellido Paterno</label>
            </div>
            <div class="grupo">
                <input type="email" name="correo" pattern= "{1,40}" id="txtcorreo" value="<%out.print(u.getCorreo());%>" required><span class="barra"></span>
                <label for="">Email</label>
            </div>
            <div class="grupo">
                <input type="number" name="edad" min="1" pattern= "^[0-9]+{1,2}" id="txtedad" value="<%out.print(u.getEdad());%>" required><span class="barra"></span>
                <label for="">Edad</label>
            </div>
            
            <div class="grupo">
                <input type="password" name="pass" id="txtpass" value="<%out.print(u.getContraseña());%>" required><span class="barra"></span>
                <label for="">Contraseña</label>
            </div>

            <button type="submit" value="Actualizar" id="btnregistrar">Actualizar</button>
        </div>
        </form>
    </body>
</html>
