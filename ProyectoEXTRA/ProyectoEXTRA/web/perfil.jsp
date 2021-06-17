<%-- 
    Document   : perfil
    Created on : 15/06/2021, 12:50:15 AM
    Author     : 25666
--%>

<%@page import="Modelo.mousuario"%>
<%@page import="Controlador.consultas"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controlador.conexion"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    HttpSession objsesion = request.getSession(false);
    String usuario = (String)objsesion.getAttribute("usuario");
    
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }
    
    mousuario u = consultas.buscar(usuario);

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apock web design</title>
    <link rel="stylesheet" type="text/css" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="./css/perfil.css">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
      integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
      crossorigin="anonymous"
    />
</head>

<body>
    <div class="cabezaxdxd">    
    <header class="header">
      <a href="./menu.jsp" class="logo">MedicalAssist</a>
      <h2>LOGO</h2>
      <nav>
          
        <ul class="menu-items">
          <li><a href="#" class="menu-item">Bienvenido <% out.println(usuario);%></a></li>
          <li class="dropdown">
            <a href="perfil.jsp" class="menu-item">Perfil</a>
          </li>
          <li>
            <a href="#" class="menu-item">Realizar test</a>
            <div class="mega-menu blog">
              <div class="content">
                <div class="col">
                  <a href="#" class="img-wrapper"><span class="img">
                          <img
                        src="https://picsum.photos/400?random=2"
                        alt="Random Image" /></span>
                  </a>
                  <h2>COVID</h2>
                  <p>
                      INFORMACION DE LA ENFERMEDAD
                  </p>
                  <a href="#" class="read-more">Realizar test</a>
                </div>
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="https://picsum.photos/400?random=3"
                        alt="Random Image" /></span
                  ></a>
                  <h2>DIABETES</h2>
                  <p>
                      INFORMACION DE LA ENFERMEDAD
                  </p>
                  <a href="#" class="read-more">Realizar test</a>
                </div>
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="https://picsum.photos/400?random=4"
                        alt="Random Image" /></span
                  ></a>
                  <h2>CONJUNTIVIS</h2>
                  <p>
                      INFORMACION DE LA ENFERMEDAD
                  </p>
                  <a href="#" class="read-more">Realizar test</a>
                </div>
              </div>
            </div>
          </li>
          <li><a href="/ProyectoEXTRA/cerrarsesionservlet" class="menu-item">Cerrar Sesión</a></li>
        </ul>
      </nav>
    </header>
    </div>
        
         <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <button type="button" class="boton-portada">
                    <i class="far fa-image"></i> Cambiar fondo
                </button>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo"><% out.println(u.getNombre());%> <% out.println(u.getApellido());%></h3>
                <p class="texto">Descripción</p>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-building"></i> Correo: <% out.println(u.getCorreo());%></li>
                    <li><i class="icono fas fa-calendar-alt"></i> Edad: <% out.println(u.getEdad());%></li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-user-check"></i> Usuario: <% out.println(usuario);%> </li>
                </ul>
            </div>
            <div class="redes-sociales">
                <a href="" class="boton-redes facebook fab fa-facebook-f"><i class="icon-facebook"></i></a>
                <a href="" class="boton-redes twitter fab fa-twitter"><i class="icon-twitter"></i></a>
                <a href="" class="boton-redes instagram fab fa-instagram"><i class="icon-instagram"></i></a>
            </div>
        </div>
    </section>
        

        
    </body>
</html>
