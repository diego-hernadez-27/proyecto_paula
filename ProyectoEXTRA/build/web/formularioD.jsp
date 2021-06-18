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
                   <header class="header">
      <a href="#" class="logo">MedicalAssist</a>
      <nav>
          
        <ul class="menu-items">
          <li><a href="#" class="menu-item">Bienvenido <% out.println(usuario);%></a></li>
          <li class="dropdown">
            <a href="perfil.jsp" class="menu-item">Perfil</a>
          </li>
          <li>
            <a href="#" class="menu-item"><font color="white">Realizar test</font></a>
            <div class="mega-menu blog">
              <div class="content">
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="https://picsum.photos/400?random=2"
                        alt="Random Image" /></span
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
                        src="https://picsum.photos/400?random=3"
                        alt="Random Image" /></span
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
                        src="https://picsum.photos/400?random=4"
                        alt="Random Image" /></span
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
                <form action="FormConecD.jsp" method="POST" name="form" id="Form">
                    <div id="diabetes">
                        <fieldset>
                            <legend><h2 style="color:black">DIABETES</h2></legend>
                            <br>
                             <legend><h2 style="color:black">Sintomas</h2></legend>
                            <div id="aumento_sed">
                              
                                <p>¿Ha tenido la necesidad de ingerir liquidos constantemente?</p>
                                <input type="radio" name ="p1D" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p1D" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p1D" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Ha tenido la necesidad de orinar muy amenudo?</p>
                                <input type="radio" name ="p2D" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p2D" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p2D" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Tiene la necesidad de comer constantemente en porciones grandes?</p>
                                <input type="radio" name ="p3D" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p3D" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p3D" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Ha notado disminución de  su peso radicalmente?</p>
                                <input type="radio" name ="p4D" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p4D" value="No"> No<br>
                                <!-- 2pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Ha percado tener cambios de humor?</p>
                                <input type="radio" name ="p5D" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p5D" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p5D" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Se ha percatado de tener fátiga o debilidad?</p>
                                <input type="radio" name ="p6D" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p6D" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p6D" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Suele tener la visión borrosa?</p>
                                <input type="radio" name ="p7D" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="p7D" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="p7D" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                             <br><br>
                             <legend><h2 style="color:black">Causas</h2></legend>
                             <div>
                                 <h4>Genética</h4>
                                 <h4>Exposición a virus y otros factores ambientales</h4>
                                
                            </div>
                        </fieldset>
                    </div>
                    <div>
                      <button type="submit" value="Registrarme" id="btnregistrar">Enviar</button>
                    </div>
                </form>
            </div>
       </section>
    </body>
</html>