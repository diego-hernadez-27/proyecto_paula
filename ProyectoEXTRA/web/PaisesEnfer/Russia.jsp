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

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Proyecto aula</title>
<link rel="stylesheet" href="../css/paginaprincipal.css">
<link rel="stylesheet" href="./css/Russia.css">
<script src="./js/instrucciones.js" type="text/javascript"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script> 
<script src='./py/morris.min.js'></script>
<script>    

function grafica1(){
  new Morris.Bar({
  element: 'graph',
  data: [{x:'Diarrea del viajero 30%', y:40 , z:1, } ,
{x:'Fiebre tifoidea 20%', y:30, z:2},
{x:'Ántrax 20%', y:30, z:3},
{x:'Hantavirus 20%', y:20, z:4},

 ],
  xkey: 'x',
  ykeys: ['y'],
  axes:true,
  labels: ['Cantidad:'],
  resize:true,
  lineColors:['black']
  });
}
</script>

</head>
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
      <a href="../menu.jsp" class="logo">MedicalAssist</a>
      <nav>
          
        <ul class="menu-items">
          <li><a href="../menu.jsp" class="menu-item">Bienvenido <% out.println(usuario);%></a></li>
          <li class="dropdown">
            <a href="../perfil.jsp" class="menu-item">Perfil</a>
          </li>
          <li>
            <a href="#" class="menu-item">Realizar test</a>
            <div class="mega-menu blog">
              <div class="content">
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="../img/5e71213e25bcf.jpg"
                        alt="Random Image" width="600" height="275"/></span
                  ></a>
                  <h2>COVID</h2>
                  <p>
                      La COVID-19 afecta de distintas maneras en función de cada persona. La mayoría de las personas que se contagian presentan síntomas de intensidad leve o moderada, y se recuperan sin necesidad de hospitalización.
                  </p>
                  <a href="../formulario.jsp" class="read-more"><font color="white">Realizar test</font></a>
                </div>
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="../img/OIP.jpg"
                        alt="Random Image" width="600" height="275"/></span
                  ></a>
                  <h2>DIABETES</h2>
                  <p>
                      La diabetes es una enfermedad en la que los niveles de glucosa (azúcar) de la sangre están muy altos. La glucosa proviene de los alimentos que consume. La insulina es una hormona que ayuda a que la glucosa entre a las células para suministrarles energía.
                  </p>
                  <a href="../formularioD.jsp" class="read-more"><font color="white">Realizar test</font></a>
                </div>
                <div class="col">
                  <a href="#" class="img-wrapper"
                    ><span class="img"
                      ><img
                        src="../img/R0b86cf33d5f6bbb03e6e3881e7f140d6.jpg"
                        alt="Random Image" width="600" height="275"/></span
                  ></a>
                  <h2>HIPERTENSION ARTERIAL</h2>
                  <p>
                      La hipertensión arterial es una enfermedad crónica en la que aumenta la presión con la que el corazón bombea sangre a las arterias, para que circule por todo el cuerpo.
                  </p>
                  <a href="../formularioHIPER.jsp" class="read-more"><font color="white">Realizar test</font></a>
                </div>
              </div>
            </div>
          </li>
          <li><a href="/ProyectoEXTRA/cerrarsesionservlet" class="menu-item">Cerrar Sesión</a></li>
        </ul>
      </nav>
    </header>
<body>



    <article>
     
            <section >
                <H1>RUSIA</H1>
                <br>
                <h4>Las enfermedades en Rusia asi como su salud.</h4>
                <br>
                <p>
                    La función de una oficina de la OMS en el país es responder a las solicitudes del país anfitrión para apoyar la formulación de políticas para el desarrollo sanitario sostenible, adoptando un enfoque holístico del sistema de salud.

                    Esto incluye brindar orientación, establecer relaciones locales para implementar la cooperación técnica, establecer normas y acuerdos y garantizar que las medidas de salud pública se coordinen y se implementen durante las crisis.

                </p>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/200px-Flag_of_Russia.svg.png" height="100px" alt="">
                <br>
                <a href="#grafica" onclick="mostrar('grafica')">Presione aqui para mostrar la grafica de las enfermedades</a>


            
            </section>


            <section class="l" id="grafica">
                <p>Presione la imagen para mostrar la grafica UwU</p>
                <br>

             <a class="next" onclick="grafica1()"><img src="./py/gráfico-de-barras-3.jpg" height="150px"></a>

            <div id='graph'></div>
        </section>


            <section class="tercero" >
                <h2>Aqui una de las enfermedades mas comunes en este pais UwU</h2>
                <br>
                    <a href="#enfe1" onclick="mostrar('enfe1')"><img src="./img/cardio.jpg" class="p" ></a>
                    <a href="#enfe2" onclick="mostrar('enfe2')"><img src="https://fundacionio.com/wp-content/uploads/2020/10/FiebreTifoidea-fundacionio-1024x1024.png" class="p"></a>
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="https://fundacionio.com/wp-content/uploads/2020/09/Antrax-fundacion-io-1024x1024.png" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="https://fundacionio.com/wp-content/uploads/2020/10/Hantavirus-fundacionio-1024x1024.png" class="p"></a>
                
            </section>

            <section class="l" id="enfe1">
                <h2>Diarrea del viajero</h2>
                <br>
                <p>
                    La diarrea del viajero se define como la emisión heces sueltas tres o más veces al día. Es la complicación más frecuente de los viajes y su incidencia varía en función de muchas variables: edad, lugar de destino, estación del año, tipo de residencia, origen del viajero y, por supuesto, la dieta durante el viaje.
                </p>
                <br>
                <h2>Síntomas</h2>
                <br>
                <p>
                    La diarrea del viajero usualmente comienza de forma abrupta durante un viaje o a tu regreso. La mayoría de los casos mejoran en el plazo de uno o dos días sin tratamiento y desaparecen por completo en una semana. Sin embargo, puedes tener varios episodios de diarrea del viajero durante un mismo viaje.

                    Los signos y síntomas más comunes de diarrea del viajero son los siguientes:

                    Comienzo abrupto de episodios de diarrea tres o más veces al día
                    Una necesidad urgente de defecar
                    Calambres abdominales
                    Náuseas
                    Vómitos
                    Fiebre
                </p>
                <br>
                <h2>Diagnóstico</h2>
                <br>
                <p>
                    La diarrea del viajero puede mejorar sin ningún tratamiento. Pero, mientras esperas, es importante que te mantengas hidratado con líquidos seguros, como agua embotellada. Si no pareces estar mejorando rápidamente, hay varios medicamentos disponibles para ayudar a aliviar los síntomas los cuales debes onsultar antes con tu médico de cabecera.
                </p>
                <br>
                <h2>Prevención</h2>
                <br>
                <p>
                    La regla general cuando viajas a otro país es la siguiente: hervirlo, cocinarlo, pelarlo u olvidarlo. Sin embargo, es posible enfermarse incluso si se siguen estas reglas, Evita el agua no esterilizada (del grifo, pozo o arroyo). Si necesitas consumir agua local, hiérvela por tres minutos y lo más importante es no automedicarse ya que puede hacer que la bacteria se haga inmune a los antibióticos.
                </p>
                <br><br>
                <img src="https://www.infobioquimica.com/new/wp-content/uploads/2017/07/giardia-696x392.jpg" height="100px" alt="">
                <img src="hhttps://www.herbolariosaludnatural.com/img/cms/Blog/diarrea-del-viajero-blog.png" height="100px" alt="">
                <img src="https://serviendoscopias.com/wp-content/uploads/2020/05/anatomy-160524_640-494x446.png" height="100px" alt="">
            </section>
            
            <section class="l" id="enfe2">
                <h2>Fiebre tifoidea</h2>
                <p> La fiebre tifoidea es provocada por bacterias peligrosas llamadas Salmonella typhi. La bacteria Salmonella typhi está emparentada con las bacterias que causan la salmonelosis, otra infección intestinal grave, pero son distintas, siendo una grave amenaza contra la salud en los países en vías de desarrollo, especialmente para los niños.
                    
                </p>
                <br>
                <h2>Sintomas</h2>
                <p>
                    Los síntomas que comprenden generalmente a los afectados suelen ser Fiebre alta, Dolor de cabeza,  Dolor estomacal y Estreñimiento o diarrea sin embargo estos suelen aparecer de forma gradual de una a tres semanas después de la exposición a la enfermedad.
                </p>
                <br>
                <h2>Diagnostico</h2>
                <br>
                <p>
                    Es posible que el médico sospeche de la presencia de fiebre tifoidea según tus síntomas, o tu historia clínica o antecedentes de viajes. El diagnóstico generalmente se confirma identificando a la Salmonella typhi en un cultivo de sangre u otro líquido o tejido corporal.
                </p>
                <br>
                <h2>prevenciones</h2>
                <p>
                   
                    Beber agua segura, mejores condiciones de higiene y una atención médica adecuada pueden ayudar a prevenir y a controlar la fiebre tifoidea. Desafortunadamente, en muchas naciones en vías de desarrollo, esto puede ser difícil de lograr. Por esa razón, algunos expertos creen que las vacunas son la mejor manera de controlar la fiebre tifoidea.

                    Si vives en zonas donde el riesgo de contraer fiebre tifoidea es alto o estás por viajar a alguna de ellas, se recomienda que te apliques la vacuna ya sea cualquiera de las 2(Una se inyecta como una dosis única al menos una semana antes del viaje;
                    la otra se administra por vía oral en cuatro cápsulas y la indicación es que se tome una cápsula día por medio.) aunque claro no tienen un 100% de efectividad         
                </p>
                <br>
                <h2>Números de afectados</h2>
                <p>
                    No se tienen públicamente números exactos por deceso de fiebre tofoidea en Rusia por la seguridad de privacidad del país ante la OMS sin embargo globalmente se estima que se contagian entre 11 y 20 millones de personas al año de las cuales mueren de 128000 a 161000 personas.
                </p>
                <br><br>
                <img src="https://statics-cuidateplus.marca.com/sites/default/files/styles/natural/public/fiebre-tifoidea.jpg?itok=_OIYPNbg" height="100px" alt="">
                <img src="https://www.clinicbarcelona.org/uploads/media/default/0002/77/443f2ead175b0da7a4a65a5b8646e1ffdaa2fc9d.jpeg" height="100px" alt="">
                

            </section>
            <section class="l" id="enfe3">
                <h2>Ántrax</h2>
                
                <p> 
                    El ántrax es una enfermedad poco común pero grave causada por una bacteria que forma esporas, el Bacillus anthracis. El ántrax afecta principalmente al ganado y los animales de caza. Los humanos se pueden infectar a través del contacto directo o indirecto con animales enfermos.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        No hay pruebas de que el ántrax se transmita de persona a persona, pero es posible que las lesiones cutáneas de ántrax sean contagiosas por contacto directo o por contacto con un objeto contaminado (fómites). Por lo general, la bacteria del ántrax ingresa al cuerpo a través de una herida en la piel. También puedes infectarte por comer carne contaminada o por inhalar las esporas.
                    </p>
                    <br>
                    <h2>Riesgos</h2>
                    <p>
                        Los signos y síntomas, que dependen de la forma en que estés infectado, pueden incluir llagas en la piel, vómitos y choque. El tratamiento inmediato con antibióticos puede curar la mayoría de las infecciones de ántrax. El ántrax por inhalación es el más difícil de tratar y puede ser mortal.

                        El ántrax es muy poco común en el mundo desarrollado. Sin embargo, la enfermedad sigue siendo motivo de preocupación porque la bacteria se ha utilizado en ataques de bioterrorismo en los Estados Unidos.
                    </p>
                    <br>
                    <h2>Prevenciones</h2>
                    <p>
                        Para prevenir la infección después de la exposición a las esporas de ántrax, los Centros para el Control y la Prevención de Enfermedades recomiendan lo siguiente:

                        Un tratamiento de 60 días con medicamentos antibióticos (la ciprofloxacina, la doxiciclina y la levofloxacina están aprobadas para adultos y niños); una serie de tres dosis de la vacuna contra el ántrax y en algunos casos, tratamiento con anticuerpos monoclonales (raxibacumab y obiltoxaximab)
                    </p>
                    <br>
                    <h2>Numeros de casos</h2>
                    <br>
                    <p>
                        El Ántrax no es una enfermedad que aparezca generalmente como la gripe sin embargo puedes existir pequeños casos por comer carne infectada (que es la manera más común de contagiarse) aunque los decesos tampoco están bien confirmados del todo ya que también suele utilizarse como arma biológica.
                    </p>
                    <br>
                    <br>
                    <img src="https://lh3.googleusercontent.com/proxy/lKYvfVpwtXGyx_rqAH0QF27Gvx3OUw2ur8JeQ24MVkaVeVXxJ6BG0jXwug3dFthikt-gvx7_-B3og0No3AXn9bapeUOBfjaD_ePGd1iXpRUZF9I0q41zVLMrzj6PAXdQKCgc8aln8hE" height="100px">
                    <img src="https://c8.alamy.com/compes/kw114y/el-antrax-lesion-de-la-piel-del-antebrazo-causada-por-la-bacteria-bacillus-anthracis-aqui-la-enfermedad-se-ha-manifestado-como-una-ulceracion-cutanea-que-ha-comenzado-a-ponerse-de-color-negro-de-ahi-el-origen-del-nombre-antrax-despues-el-nombre-griego-para-el-carbon-imagen-cortesia-de-cdc-james-h-steele-1962-kw114y.jpg" height="100px">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXJGoqWHdOonoHGgxQ_K65i2JtxzrOPqCoZw&usqp=CAU" height="100px">
            </section>
            <section class="l" id="enfe4">
                <h2>Hantavirus</h2>
                <br>
                <p>
                    El síndrome pulmonar por hantavirus es una enfermedad infecciosa caracterizada por síntomas similares a la influenza que puede avanzar rápidamente hacia problemas respiratorios que podrían poner en riesgo tu vida.

                    Varios tipos de hantavirus pueden provocar el síndrome pulmonar por hantavirus. Son transportados por varios tipos de roedores, particularmente el ratón ciervo. Puedes infectarte principalmente respirando el aire infectado con hantavirus que se libera en la orina y el excremento de los roedores.

                    Como las opciones de tratamiento son limitadas, la mejor protección contra el síndrome pulmonar por hantavirus es evitar los roedores y sus hábitats.
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Los más comunes son dolor de cabeza, náuseas, vómito, mareo constante y sangrado nasal, aunque la hipertensión es en su mayoría asintomática   
                </p>
                <br>
                <h2>Diagnostico</h2>
                <br>
                <p> 
                    Para detectarla se necesita que el médico o personal capacitado  mida la presión arterial varias veces en un periodo específico .
                    La mayoría de las personas no la detecta a tiempo, por tanto desarrollan cardiopatía y problemas renales sin saber la causa.   
                </p>

                <br>
                <h2>Prevenciones</h2>
                <br>
                <p>
                    El riesgo de desarrollar hipertensión aumenta con la ingesta de sal, el sobrepeso, el consumo de alcohol, cigarro y otras drogas. 
                </p>
                <br>
                <h2>Losnumeros de los casos</h2>
                <br>
                <p>
                    La hipertensión en los adultos mexicanos tiene una prevalencia de 43.2% y más de la mitad, el 26.6%, no sabe que padece esta enfermedad, de acuerdo con  Ensanut . Uno de cada tres adultos del mundo tiene hipertensión. Esa proporción aumenta con la edad, ya que una de cada 10 personas de 20 a 40 años, y cinco de cada 10 de 50 a 60 años, según datos de la OMS. 
                </p>
                <br><br>
                <img src="https://www.viveusa.mx/sites/default/files/field/image/roedores-caso-hantavirus-estados-unidos.jpg" height="100px" alt="">
                <img src="https://cdni.rt.com/actualidad/public_images/2021.06/thumbnail/60be93e7e9ff712ea16ca158.jpg" height="100px" alt="">
                <img src="https://static3.lasprovincias.es/www/multimedia/202003/25/media/cortadas/Hantavirus-koQD-U1006742936990eC-1248x770@Las%20Provincias.jpg" height="100px" alt="">
                
            
            
           </section> 
           


    </article>








<script src="./js/index.js"></script>
</body>
</html>