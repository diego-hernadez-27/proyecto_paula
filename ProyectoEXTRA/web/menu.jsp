<%-- 
    Document   : menu
    Created on : 14/06/2021, 01:04:10 PM
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
      <a href="#" class="logo">MedicalAssist</a>
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
    <article>
      <section>

          <p align="center">Aqui un mapa mundial que va a contener las enfermedades mas comunes de los paises asi como graficas de porcentajes de esas mismas enfermedades</p>
          <p align="center"> pulse el pais que quiere revisar </p>
          <br>
          <br>

              <div id="holder_1000" style="position:relative"></div>

              
          

              <script type="text/javascript">        
              var current = null;
              var map = {};
              var m = {};				
              var map = {};
              let num = 0;
              var svgHeight = 400;
              var svgWidth = 1000;
              var preserveAspectRatio="xMinYMin slice";
              var R = Raphael("holder_1000", "100%", "100%");
                      
              R.setViewBox(0, 0, svgWidth, svgHeight, true);
              
              render_map(R,map,num);
                  
              for (var state in map) {							        
                  map[state].color = Raphael.getColor();
                  (function (st, state) {
                  st[0].onmouseover = () => {
                      R.safari();
                      current = state;
                  };
                  st[0].onmouseout = () => {
                      R.safari();
                  };
                  st[0].onclick = () => {
                      alert(state);
                  };
                  })(map[state], state);
              }       
              let render = num => {
                  render_map(R,map,num);
              
              };
              
              
              </script>

      </section>

      
</article>
 <footer class="foter">

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