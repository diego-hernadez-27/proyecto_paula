<%-- 
    Document   : formulario
    Created on : 16/06/2021, 12:10:48 AM
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
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/paginaprincipal.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
         <link rel="stylesheet" href="./css/formularios.css">
    </head>
            <div class="contenedor">
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
                  <a href="formularioHIPER.jsp" class="read-more">Realizar test</a>
                </div>
              </div>
            </div>
          </li>
          <li><a href="/ProyectoEXTRA/cerrarsesionservlet" class="menu-item">Cerrar Sesión</a></li>
        </ul>
      </nav>
    </header>
       <section>
                <form action="FormConec.jsp" method="POST" name="form" id="Form">
                    <div id="Covid">
                        <fieldset>
                            <legend><h2 style="color:black">COVID</h2></legend>
                            <br>
                            <legend><h2 style="color:black">Sintomas</h2></legend>
                            <br>
                            <div>
                                <p>¿Tienes fibre?</p>
                                <input type="radio" name ="Fiebre" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="Fiebre" value="No">No<br>
                                <!-- 2pts -->
                                <input type="radio" name ="Fiebre" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Presentas tos?</p>
                                <input type="radio" name ="Tos" value="Si" required>Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="Tos" value="No">No<br>
                                <!-- 2pts -->
                                <input type="radio" name ="Tos" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <br>
                                <p>¿Presenta cansancio?</p>
                                <input type="radio" name ="Cansancio" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="Cansancio" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="Cansancio" value="Ocasiones">En algunas ocasiones<br>
                                <!--1pta-->
                                 
                            </div>
                            <div>
                                <br>
                                <p>¿Presenta falta de aliento o dificultad para respirar?</p>
                                 <input type="radio" name ="dificultad_respirar" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="dificultad_respirar" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="dificultad_respirar" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                            </div>
                            <div>
                                <p>¿Presenta dolores musculares?</p>
                                <input type="radio" name ="dolores_musculares" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="dolores_musculares" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="dolores_musculares" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                                
                            </div>
                            <div>
                                <p>¿Llega a tener escalofrios?</p>
                                <input type="radio" name ="Esacalofrios" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="Esacalofrios" value="No" > No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="Esacalofrios" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Llega a presentar dolor de garganta?</p>
                                <input type="radio" name ="Edolor_garganta" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="Edolor_garganta" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="Edolor_garganta" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Llega a presentar escurrimiento nasal?</p>
                                <input type="radio" name ="escurrimiento_nasal" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="escurrimiento_nasal" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="escurrimiento_nasal" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Suele tener dolores de cabeza prolongados?</p>
                                <input type="radio" name ="dolor_cabeza" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="dolor_cabeza" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="dolor_cabeza" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Presenta alrritmia cardiaca constantemente?</p>
                                <input type="radio" name ="alrritmia_cardiaca"value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="alrritmia_cardiaca" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="alrritmia_cardiaca" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Presenta sintomas de conjuntivitis?</p>
                                <input type="radio" name ="conjutivitis" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="conjutivitis" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="conjutivitis" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Presenta nauseas constantemente?</p>
                                <input type="radio" name ="nauseas" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="nauseas" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="nauseas" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Suele tener diarrea?</p>
                                <input type="radio" name ="diarrea" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="diarrea" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="diarrea" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <div>
                                <p>¿Genera sintomas de sarpullido? (brote de ronchas en la piel)</p>
                                <input type="radio" name ="sarpullido" value="Si" required> Sí<br>
                                <!-- 3pts -->
                                <input type="radio" name ="sarpullido" value="No"> No<br>
                                <!-- 2pts -->
                                 <input type="radio" name ="sarpullido" value="Ocasiones">En algunas ocasiones<br>
                                <!-- 1pts -->
                               
                            </div>
                            <br><br>
                            <legend><h2 style="color:black">Causas</h2></legend>
                            <div>
                                <h4>Conatacto a una persona u objeto contagiado</h4>
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
