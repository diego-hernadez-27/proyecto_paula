<%-- 
    Document   : formularioD
    Created on : 16/06/2021, 01:02:04 PM
    Author     : alesj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    HttpSession objsesion = request.getSession(false);
    
    String usuario = (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="./css/paginaprincipal.css">
         <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
         <link rel="stylesheet" href="./css/formularios.css">
    </head>
    <body>
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
        <section>
                <form action="FormConecHIPER.jsp" method="post" id="forminicio">
                <div>
                    <div id="diabetes">
                        <fieldset>
                            <legend><h2 style="color:black">HIPERTENSION</h2></legend>
                            <br>
                             <legend><h2 style="color:black">Sintomas</h2></legend>
                            <div id="aumento_sed">
                              
                                <p>¿Ha tenido sangrado nasal?</p>
                                <input type="radio" name ="p1HIPER" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p1HIPER" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p1HIPER" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Nota su visión borrosa?</p>
                                <input type="radio" name ="p2HIPER" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p2HIPER" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p2HIPER" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Presenta dolores de cabeza fuertes?</p>
                                <input type="radio" name ="p3HIPER" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p3HIPER" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p3HIPER" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Presenta nauseas o vomito?</p>
                                <input type="radio" name ="p4HIPER" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p4HIPER" value="No"> No<br>
                                <!-- 2pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Ha notado que algunas situaciones se confunde?</p>
                                <input type="radio" name ="p5HIPER" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p5HIPER" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p5HIPER" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <br><br>
                            <legend><h2 style="color:black">Causas</h2></legend>
                            <div>
                                <h4>Suele ser hereditaria</h4>
                                <h4>Personas con sobrepeso u obesidad</h4>
                                <h4>Personas con diabetes</h4>
                                <h4>Consumo elevado de sal, alcohol o tabaco</h4>
                                <h4>Falta de ejercicio</h4>
                            </div>
                            
                        </fieldset>
                    </div>
                    <div>
                        <button type="submit" value="Registrarme" id="btnregistrar">Enviar</button>
                    </div>
                </div>
                </form>
            </div>
       </section>
    </body>
</html>