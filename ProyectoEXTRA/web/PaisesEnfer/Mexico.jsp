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
<link rel="stylesheet" href="./css/Mexico.css">
<script src="./js/instrucciones.js" type="text/javascript"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script> 
<script src='./py/morris.min.js'></script>
<script>    

    function grafica1(){
      new Morris.Bar({
      element: 'graph',
      data: [{x:'Enfe. Cardiovasculares 30%', y:40 , z:1, } ,
    {x:'Cancer 20%', y:30, z:2},
    {x:'Obesidad y Sobrepeso 20%', y:30, z:3},
    {x:'Hipertension 20%', y:20, z:4},
    {x:"Diabetes 10%", y:20, z:5},
    {x:'Enfe. pulmonar  10% ', y:10, z:6},
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
<header class="header">
      <a href="../menu.jsp" class="logo">MedicalAssist</a>
      <nav>
          
        <ul class="menu-items">
          <li><a href="../menu.jsp" class="menu-item">Bienvenido <% out.println(usuario);%></a></li>
          <li class="dropdown">
            <a href="../perfil.jsp" class="menu-item">Perfil</a>
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
                  <a href="../formulario.jsp" class="read-more"><font color="white">Realizar test</font></a>
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
                  <a href="../formularioD.jsp" class="read-more"><font color="white">Realizar test</font></a>
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
                <H1>MEXICO</H1>
                <br>
                <h4>Las enfermedades en México asi como su salud.</h4>
                <br>
                <p>
                    Cada año en México mueren alrededor de 600 mil personas de acuerdo a cifras del Instituto Nacional de Estadísticas y Geografía (INEGI).
                    Este Instituto realizó el estudio llamado Mujeres y Hombres en México 2014 en el que detallan cuáles son las enfermedades que conforman las principales causas de fallecimientos en nuestro país.
                    Según las cifras de este estudio, hoy la mortalidad de la población mexicana se relaciona más con enfermedades crónicodegenerativas, accidentes y agresiones, que con trastornos infectocontagiosos, como sucedía años atrás.
                    Para mujeres y hombres la principal causa de muerte son las enfermedades del corazón, excluyendo el paro cardiaco. En segundo lugar, se encuentra una enfermedad crónica degenerativa: la diabetes mellitus.
                </p>
                <img src="./img/descargar (2).png" height="100px" alt="">
                <br>
                <a href="#grafica" onclick="mostrar('grafica')">Presione aqui para mostrar la grafica de las enfermedades</a>

            

            
            </section>

            <section class="l" id="grafica">
                <p>Presione la imagen para mostrar la grafica </p>
                <br>

             <a class="next" onclick="grafica1()"><img src="./py/gráfico-de-barras-3.jpg" height="150px"></a>

            <div id='graph'></div>





            </section>
           

            <section class="tercero" >
                <h2>Aqui una de las enfermedades mas comunes en este pais UwU</h2>
                <br>
                    <a href="#enfe1" onclick="mostrar('enfe1')"><img src="./img/cardio.jpg" class="p" ></a>
                    <a href="#enfe2" onclick="mostrar('enfe2')"><img src="./img/cancer.jpg" class="p"></a>
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="./img/obesidad.jpg" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="./img/iper.jpg" class="p"></a>
                    <a href="#enfe5" onclick="mostrar('enfe5')"><img src="./img/diabestes.jpg" class="p"></a>
                    <a href="#enfe6" onclick="mostrar('enfe6')"><img src="./img/pulmon.jpg" class="p"></a>
                    
                
            </section>

            <section class="l" id="enfe1">
                <h2>Enfermedades cardiovasculares</h2>
                <br>
                <p>
                    Las enfermedades cardiovasculares son un grupo amplio de padecimientos entre los que se incluyen las enfermedades del corazón y las relacionadas con los vasos sanguíneos como la cardiopatía coronaria, reumática, congénita,
                    cerebrovasculares, arteriopatías periféricas y trombosis venosas profundas y embolias pulmonares, dijo el doctor Juan Gutiérrez Mejía del Tec de Monterrey.
                </p>
                <br>
                <h2>Síntomas</h2>
                <br>
                <p>
                    Dificultad para respirar, náuseas, vómito, dolor en la mandíbula, espalda, pecho, brazos, hombro izquierdo; mareos o desmayos, sudores fríos y palidez, aunque cada enfermedad tiene su sintomatología propia; las de los vasos 
                    sanguíneos suelen no presentar molestias, y su primera manifestación puede ser un ataque al corazón, dijo Malaquías López de la UNAM. 
                </p>
                <br>
                <h2>Diagnóstico</h2>
                <br>
                <p>
                    Para detectar este padecimiento  se requiere la realización de un electrocardiograma, una prueba sencilla e indolora que detecta y registra la actividad eléctrica del corazón. Muestra qué tan rápido late y con qué ritmo (estable o irregular)
                    y registra la potencia y la sincronización de los impulsos eléctricos a medida que pasan por cada parte del corazón.
                    Otras opciones son la prueba de esfuerzo, un ecocardiografía o una radiografía de tórax. 
                </p>
                <br>
                <h2>Prevención</h2>
                <br>
                <p>
                    El riesgo cardiovascular se puede reducir realizando actividades físicas, evitando fumar o inhalar humo del mismo,  con dieta sana enfocada en verduras y frutas  y manteniendo un peso saludable, agregó el especialista Malaquías López.
                </p>
                <br><br>
                <img src="https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small/public/articulos/enfermedades-cardiovasculares.jpg" height="100px" alt="">
                <img src="https://invdes.com.mx/wp-content/uploads/2019/02/28-02-19-cardiovasculares.jpg" height="100px" alt="">
                <img src="https://www.meganoticias.mx/uploads/noticias/enfermedades-cardiovasculares-primera-causa-de-muerte-122533.jpg" height="100px" alt="">
            </section>
            
            <section class="l" id="enfe2">
                <h2>Cáncer (Tumores malignos)</h2>
                <p> El cáncer surge cuando las células de alguna parte del cuerpo comienzan a crecer sin control. Las células normales crecen, se dividen y mueren en una forma ordenada. Sin embargo, las células cancerosas crecen, se dividen 
                    y en lugar de morir, viven más tiempo que las normales para continuar formando nuevas células anormales, explicó el doctor Malaquías López, de la Facultad de Medicina de la UNAM.
                </p>
                <br>
                <h2>Sintomas</h2>
                <p>
                    Dependen del lugar y tamaño del tumor . En general son pérdida de peso inexplicable, fiebre, cansancio crónico, dolor, cambios y modificaciones en la piel. “Los diagnósticos tempranos son importantes, pues la mayoría de las neoplasias se diagnostican en fases avanzadas”.
                </p>
                <br>
                <h2>Diagnostico</h2>
                <br>
                <p>
                    Para cada tipo de cáncer existen pruebas distintas, entre las que se encuentran las biopsias y análisis de sangre y orina.  
                </p>
                <br>
                <h2>prevenciones</h2>
                <p>
                   
                    Mantener un estilo de vida saludable . Evita el cigarro, sobrepeso y obesidad, la inactividad física, la exposición prolongada al sol sin protección y las infecciones por virus de las hepatitis B (VHB) y C (VHC) o por papiloma humano (PVH).                 
                </p>
                <br>
                <h2>NUmeros de afectados</h2>
                <p>
                    El cáncer es la tercera causa de muerte en México y según estimaciones de la Unión Internacional contra el Cáncer, cada año se suman más de 128,000 casos de mexicanos.
                    En 2008, el cáncer causó más de 7.5 millones de defunciones en el mundo. Los más mortales son los de pulmón, estómago, hígado, colon y mama. Para 2030 se prevé que la mortandad por este padecimiento aumente a 13 millones, según la  OMS .
                </p>
                <br><br>
                <img src="https://thumbs.dreamstime.com/z/cáncer-y-neoplasma-comparación-diferencia-entre-tumores-malignos-benignos-el-tumor-benigno-tiene-una-cápsula-las-células-de-203883858.jpg" height="100px" alt="">
                <img src="https://image.slidesharecdn.com/caractersticasclnicastumoresbenignosymalignos-121207192428-phpapp01/95/caractersticas-clnicas-tumores-benignos-y-malignos-3-638.jpg?cb=1354908305" height="100px" alt="">
                <img src="https://www.redaccionmedica.com/images/enfermedades/tumores-cerebrales-adultos.jpg" height="100px" alt="">

            </section>
            <section class="l" id="enfe3">
                <h2>Obesidad y sobrepeso</h2>
                
                <p> 
                    El sobrepeso y la obesidad son una acumulación anormal o excesiva de grasa perjudicial para la salud. En México, siete de cada 10 personas padecen esta enfermedad. La prevalencia combinada es mayor en las mujeres (73%) que en los hombres (69.4%). Los aumentos en las prevalencias de obesidad en México se encuentran entre los más rápidos del mundo,  según Ensanut .
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        La causa fundamental de ambos trastornos es un desequilibrio entre las calorías consumidas y las gastadas, lo que ocasiona la acumulación de grasa
                    </p>
                    <br>
                    <h2>Riesgos</h2>
                    <p>
                        Desarrollar enfermedades cardiovasculares, diabetes, osteoartritis y enfermedades cardiovasculares, según el médico Juan Gutiérrez Mejía del Instituto Nacional de Ciencias Médicas y Nutrición Salvador Zubirán de la Secretaría de Salud. 
                    </p>
                    <br>
                    <h2>Prevenciones</h2>
                    <p>
                        Limitar la ingesta de grasa y azúcares, aumentar el consumo de frutas, verduras, legumbres, cereales integrales y frutos secos; realizar actividad física periódica para lograr un equilibrio energético y un peso sano.
                    </p>
                    <br>
                    <h2>Numeros de casoso</h2>
                    <br>
                    <p>
                        El sobrepeso y la obesidad son la quinta causa de defunciones en el mundo. Al año fallecen 2.8 millones de personas adultas como consecuencia. Además, el 44% de la carga de diabetes, el 23% de la carga de cardiopatías isquémicas y entre el 7% y el 41% de la carga de algunos cánceres son atribuibles al sobrepeso y la obesidad, según la  OMS .
                        Un índice de masa corporal (IMC) igual o superior a 25 indica sobrepeso y mayor a 30 obesidad. Puedes calcular tu IMC  en esta herramienta web .
                    </p>
                    <br>
                    <br>
                    <img src="https://www.rockandpop.cl/wp-content/uploads/2019/10/obesidad-y-sobrepeso-como-prevenir-400x360.jpg" height="100px">
                    <img src="https://bienestarips.com/wp-content/uploads/2019/07/OB1Recurso-1@2x-768x446.png" height="100px">
                    <img src="https://mexiconuevaera.com/sites/default/files/styles/interior_noticia/public/imagenes/2018/Mar/15/diabetes.jpg?itok=gTG3cvrU" height="100px">
            </section>
            <section class="l" id="enfe4">
                <h2>Hipertensión</h2>
                <br>
                <p>
                    La hipertensión o presión arterial alta es el principal factor de riesgo de infartos de miocardio, accidentes cerebrovasculares e insuficiencia renal. La presión arterial es la medición de la fuerza ejercida contra las paredes de las arterias a medida que el corazón bombea sangre a través del cuerpo.   
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
                <img src="https://www.mayoclinic.org/-/media/kcms/gbs/patient-consumer/images/2018/05/11/14/58/blood-pressure-monitor-8col-3559308-001-0.jpg" height="100px" alt="">
                <img src="https://tecreview.tec.mx/wp-content/uploads/2020/10/blood-pressure-icon-vector-id1165507074-696x522.jpg" height="100px" alt="">
                <img src="https://cuidadores.unir.net/images/post/post-Hipertension.png" height="100px" alt="">
                
            </section>
            <section class="l" id="enfe5">   
                <h2>Diabetes</h2>
                <br>
                <p>
                    En las últimas décadas, los mexicanos han manifestado una transición epidemiológica. Las  enfermedades crónicodegenerativas han desplazado a las infecciosas  como principales causas de mortandad. La diabetes es la primera causa de muertes al año en México, con cerca de 10 millones.
                    La diabetes surge cuando el páncreas  no produce la cantidad suficiente de insulina  o esta no funciona correctamente en el cuerpo. La insulina es una hormona que regula el azúcar en la sangre.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        Exceso de peso e inactividad física.  Esto puede agravarse si hay antecedentes genéticos    
                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <p>
                        Exceso de orina, sed, hambre constante, pérdida de peso, pérdida gradual de la visión y cansancio.
                        y e diagnostico seria Un análisis de sangre, cuya toma de muestra dura cinco minutos.
                    </p>
                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        “Los pacientes con diabetes toman medicamentos orales para su control. Algunos necesitan la insulina inyectable para evitar la hiperglucemia, consecuencia de no tratar este mal”. Y es esencial regular los alimentos que se consumen, evitar los refrescos y las frutas como el plátano. 
                    </p>
                    <br>
                    <h2>Prevencion</h2>
                    <br>
                    <p>
                        Mantener un peso saludable a través de una dieta balanceada y con actividad física constante; evitar fumar y consumir refrescos y jugos altos en azúcares.   
                    </p>
                    <br>
                    <h2>Los numeros de los casos</h2>
                    <br>
                    <p>
                        La epidemia de la diabetes mellitus es reconocida por la  Organización Mundial de la Salud (OMS)  como una amenaza mundial. Más de 180 millones de personas tienen esta enfermedad en el mundo y es probable que esta cifra se duplique para 2030. 
                    </p>
                    <br>
                    <img src="https://cuidadores.unir.net/images/post/diabetes.png" height="100px" alt="">
                    <img src="https://fedesp.es/wp-content/uploads/2019/07/diagnostico-de-diabetes-768x304.jpg" height="100px" alt="">
                    <img src="https://statics-cuidateplus.marca.com/sites/default/files/styles/natural/public/diabetes.jpg?itok=bimP9Qh2" height="100px" alt="">
            </section>
            <section class="l" id="enfe6">
                <h2>Enfermedad pulmonar obstructiva crónica</h2>
                <br>
                <p>
                    La enfermedad de obstrucción pulmonar crónica o enfermedad pulmonar obstructiva crónica (EPOC) es un grupo de enfermedades pulmonares que dificultan la respiración y empeoran con el tiempo.

                    Normalmente, las vías respiratorias y los alvéolos pulmonares son elásticos o se estiran. Al inhalar, las vías respiratorias llevan aire a estos saquitos. Estos se llenan de aire, como un pequeño globo. Al exhalar, los saquitos se desinflan y sale el aire. Si tiene EPOC, fluye menos aire dentro y fuera de sus vías respiratorias debido a uno o más problemas   
                </p>  
                <br>
                <h2>Causas</h2>
                <br>
                <p>
                    La causa del EPOC suele ser una larga exposición a irritantes que dañan los pulmones y las vías respiratorias. En los Estados Unidos, el humo del cigarrillo es la causa principal. La pipa, el cigarro y otros tipos de humo de tabaco también pueden causar EPOC, especialmente si se inhala.

                    La exposición a otros irritantes inhalados puede contribuir al EPOC. Estos incluyen humo de segunda mano, contaminación del aire y humos o polvos químicos del ambiente o del lugar de trabajo.  
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Es posible que en el comienzo no presente síntomas o sean solo leves. A medida que la enfermedad empeora, sus síntomas generalmente se vuelven más severos. Pueden incluir:

                    Tos frecuente o tos que produce mucha mucosidad
                    Sibilancias
                    Un silbido o chirrido cuando respira
                    Falta de aliento, especialmente si hace actividad física
                    Sensación de presión en el pecho
                    Algunas personas con EPOC contraen infecciones respiratorias frecuentes, como resfriados y gripe. En casos severos, la EPOC puede causar pérdida de peso, debilidad en los músculos inferiores e hinchazón en los tobillos, pies o piernas.  
                </p>
                <br>
                <h2>Trataminto</h2>
                <br>
                <p>
                    No hay cura para la EPOC, pero el tratamiento pueden ayudar con los síntomas, retrasar el progreso de la enfermedad y mejorar su capacidad de mantenerse activo. También hay tratamientos para prevenir o tratar las complicaciones de la enfermedad. Los tratamientos incluyen:
                    Cambios en el estilo de vida, Medicamentos , terapia con oxigeno, reabilitacion pulmonar o una cirugia.
                </p>
                <br>
                <img src="https://laverdadonline.com/wp-content/uploads/2018/11/epoc.jpg" height="100px" alt="">
                <img src="https://www.avancesenrespiratorio.com/arxius/imatgesbutlleti/Foto1_Patologia_EPOC_v2.png" height="100px" alt="">
                <img src="https://media.istockphoto.com/vectors/chronic-obstructive-pulmonary-disease-or-copd-lung-have-breathing-vector-id1249098906?s=612x612" height="100px" alt="">
           </section> 
           


    </article>









<script src="./js/index.js"></script>
</body>
</html>