<%-- 
    Document   : perfil
    Created on : 16/06/2021, 08:28:25 PM
    Author     : alesj
--%>

<%@page import="Modelo.mousuario"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
      integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
      crossorigin="anonymous"
    />
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
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu principal</title>
    </head>
    <body>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
      integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/paginaprincipal.css">
    <script src="./js/Cordenadas.js" type="text/javascript"></script>
    <script src="./js/Todo.js" type="text/javascript"></script>
    
    <header class="header">
      <a href="menu.jsp" class="logo">MedicalAssist</a>
      <nav>
          
        <ul class="menu-items">
          <li><a href="menu.jsp" class="menu-item">Bienvenido <% out.println(usuario);%></a></li>
          <li class="dropdown">
            <a href="perfil.jsp" class="menu-item">Perfil</a>
          </li>
          <li>
            <a href="#" class="menu-item">Realizar test</a>
            <div class="mega-menu blog">
              <div class="content">
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="./img/5e71213e25bcf.jpg"
                        alt="Random Image" width="600" height="275"/></span
                  ></a>
                  <h2>COVID</h2>
                  <p>
                      La COVID-19 afecta de distintas maneras en función de cada persona. La mayoría de las personas que se contagian presentan síntomas de intensidad leve o moderada, y se recuperan sin necesidad de hospitalización.
                  </p>
                  <a href="formulario.jsp" class="read-more"><font color="white">Realizar test</font></a>
                </div>
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="./img/OIP.jpg"
                        alt="Random Image" width="600" height="275"/></span
                  ></a>
                  <h2>DIABETES</h2>
                  <p>
                      La diabetes es una enfermedad en la que los niveles de glucosa (azúcar) de la sangre están muy altos. La glucosa proviene de los alimentos que consume. La insulina es una hormona que ayuda a que la glucosa entre a las células para suministrarles energía.
                  </p>
                  <a href="formularioD.jsp" class="read-more"><font color="white">Realizar test</font></a>
                </div>
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="./img/R0b86cf33d5f6bbb03e6e3881e7f140d6.jpg"
                        alt="Random Image" width="600" height="275"/></span
                  ></a>
                  <h2>HIPERTENSION ARTERIAL</h2>
                  <p>
                      La hipertensión arterial es una enfermedad crónica en la que aumenta la presión con la que el corazón bombea sangre a las arterias, para que circule por todo el cuerpo.
                  </p>
                  <a href="formularioHIPER.jsp" class="read-more"><font color="white">Realizar test</font></a>
                </div>
              </div>
            </div>
          </li>
          <li><a href="/ProyectoEXTRA/cerrarsesionservlet" class="menu-item">Cerrar Sesión</a></li>
        </ul>
      </nav>
    </header>
    </div>
        <%
        
            
        
            Connection con;
            String url = "jdbc:mysql://localhost:3306/proyectoextra";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="admin";
            Class.forName(Driver);
            con=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement ps;
            ResultSet rs;
            Statement sta = null;
            ps = con.prepareStatement("SELECT * FROM usuarios WHERE usuario = '"+usuario+"' ");
            rs = ps.executeQuery();
            
        
            
        
        
        
        
        
        
        %>
         <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">

            </div>
        </div>
                        <%
                while(rs.next()){
                %>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo"><%= rs.getString("nombre")%> <%= rs.getString("apellido")%></h3>
                <center><p class="texto">Nos preocupamos por tu segurida</p></center>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-building"></i> Correo: <%= rs.getString("correo")%></li>
                    <li><i class="icono fas fa-calendar-alt"></i> Edad: <%= rs.getString("edad")%></li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-user-check"></i> Usuario: <%= rs.getString("usuario")%> </li>
                </ul>
            </div>
            <div class="redes-sociales">
                <a href="https://www.facebook.com" class="boton-redes facebook fab fa-facebook-f"><i class="icon-facebook"></i></a>
                <a href="https://twitter.com" class="boton-redes twitter fab fa-twitter"><i class="icon-twitter"></i></a>
                <a href="https://www.instagram.com" class="boton-redes instagram fab fa-instagram"><i class="icon-instagram"></i></a>
            </div>
                            <%}
            ps.close();
            con.close();
            rs.close();
            
            %>
        </div>
    </section>
        
    </section>
        
    <section class="accioneskawaii">
        <br>
        <br>
        <h3>Elija lo que quiera hacer con su usuario</h3>
        <br>
        <a href="actualizar.jsp"><img src="./img/Actualizar.png" width="150" height="80"></a>
        <a href="borrar.jsp"><img src="./img/Borrar.png" width="150" height="80"></a>
        <br>
        <a href="resTests.jsp"><button type="submit" value="Registrarme" id="btnregistrar">VER RESULTADOS COVID</button></a>
        
        <a href="resTestsD.jsp"><button type="submit" value="Registrarme" id="btnregistrar">VER RESULTADOS DIABETES</button></a>
      
        <a href="resTestsHIPER.jsp"><button type="submit" value="Registrarme" id="btnregistrar">VER RESULTADOS HIPERTENSION ARTERIAL</button></a>
   
    
    
    </section>                        
    <footer class="foterd">

        <div class="container-footer-all">

            <div class="container-body">

                <div class="colum1">
                    <h1>Mas informacion de la compañia</h1>

                    <p>Esta compañia se dedica a la venta de software integrado con un
                        conjunto de cosas que no se lo que estoy escribiendo, este
                        texto es solo para llenara informacion en el cuadro de informacion
                        de la compañia.</p>
                    
                    <img src="./img/Spider.png" class="logoemp">

                </div>

                <div class="colum2">

                    <h1>Redes Sociales</h1>

                    <div class="row">
                        <a href="https://www.facebook.com/TheWillyrexOficial"><img src="./img/facebook.png"></a>
                        <label>Siguenos en Facebook</label>
                    </div>
                    <div class="row">
                        <a href="https://www.instagram.com/willyrex/"><img src="./img/twitter.png"></a>
                        <label>Siguenos en Twitter</label>
                    </div>
                    <div class="row">
                        <a href="https://twitter.com/WillyrexYT"><img src="./img/instagram.png"></a>
                        <label>Siguenos en Instagram</label>
                    </div>



                </div>

                <div class="colum3">

                    <h1>Informacion Contactos</h1>

                    <div class="row2">
                        <img src="./img/house.png">
                        <label>La Romana,
                            Republica Dominicana
                            Manuel del Cabral
                            Casa # 27</label>
                    </div>

                    <div class="row2">
                        <img src="./img/smartphone.png">
                        <label>+1-829-395-2064</label>
                    </div>

                    <div class="row2">
                        <img src="./img/contact.png">
                        <label>Correo de la empresa que creare</label>
                    </div>

                </div>

            </div>

        </div>

        <div class="container-footer">
            <div class="footer">
                <div class="copyright">
                    © 2021 Todos los Derechos Reservados | <a href="">SPIDER BYTE</a>
                </div>
            </div>
        </div>
    </footer>    
    
    </body>
</html>