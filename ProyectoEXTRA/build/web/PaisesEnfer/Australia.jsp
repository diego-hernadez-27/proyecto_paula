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
<link rel="stylesheet" href="./css/Australia.css">
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
{x:'Tuberculosis 20%', y:30, z:2},
{x:'Enfermedades respiratorias 20%', y:30, z:3},
{x:'Apoplegia  20%', y:20, z:4},

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
                <H1>Australia</H1>
                <br>
                <h4>Las enfermedades en Australia asi como su salud.</h4>
                <br>
                <p>
                    La función de una oficina de la OMS en el país es responder a las solicitudes del país anfitrión para apoyar la formulación de políticas para el desarrollo sanitario sostenible, adoptando un enfoque holístico del sistema de salud.

                    Esto incluye brindar orientación, establecer relaciones locales para implementar la cooperación técnica, establecer normas y acuerdos y garantizar que las medidas de salud pública se coordinen y se implementen durante las crisis.

                </p>
                <img src="https://youtooproject.com/wp-content/uploads/2021/02/Bandera_Australia_Viajar.jpg" height="100px" alt="">
                <br>
                <a href="#grafica" onclick="mostrar('grafica')">Presione aqui para mostrar la grafica de las enfermedades</a>

            
            </section>


            <section class="l" id="grafica">
                <p>Presione la imagen para mostrar la grafica</p>
                <br>

             <a class="next" onclick="grafica1()"><img src="./py/gráfico-de-barras-3.jpg" height="150px"></a>

            <div id='graph'></div>
        </section>
            <section class="tercero" >
                <h2>Aqui una de las enfermedades mas comunes en este pais UwU</h2>
                <br>
                    <a href="#enfe1" onclick="mostrar('enfe1')"><img src="./img/cardio.jpg" class="p" ></a>
                    <a href="#enfe2" onclick="mostrar('enfe2')"><img src="./img/cancer.jpg" class="p"></a>
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="https://sersaludables.org/wp-content/uploads/2019/10/neumologia01.jpg" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="https://portalgeriatrico.com.ar/wp-content/uploads/2020/02/apopleji%CC%81a-o-derrame-cerebra-768x432.jpg" class="p"></a>
                
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
                <h2>Enfermedades respiratorias</h2>
                
                <p> 
                    El síndrome de dificultad respiratoria aguda ocurre cuando se acumula líquido en los sacos de aire elásticos y diminutos (alvéolos) de los pulmones. El líquido impide que los pulmones se llenen con suficiente aire, por lo tanto, llega menos oxígeno al torrente sanguíneo. Esto priva a los órganos del oxígeno que necesitan para funcionar.

                    Normalmente, el síndrome de dificultad respiratoria aguda ocurre en personas que ya están gravemente enfermas o que tienen lesiones importantes. Una grave dificultad para respirar —que es el síntoma principal del síndrome de dificultad respiratoria aguda— suele aparecer entre unas horas y unos días después de la lesión o infección desencadenantes.

                    Muchas de las personas que padecen el síndrome de dificultad respiratoria aguda no sobreviven. El riesgo de muerte aumenta con la edad y la gravedad de la enfermedad. De las personas con síndrome de dificultad respiratoria aguda que sobreviven, algunas se recuperan por completo mientras que otras presentan daños duraderos en los pulmones.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        La causa mecánica del síndrome de dificultad respiratoria aguda es la fuga de líquido de los vasos sanguíneos más pequeños de los pulmones en dirección a los diminutos sacos de aire donde se oxigena la sangre. Normalmente, una membrana protectora conserva el líquido en los vasos sanguíneos. Sin embargo, las enfermedades o lesiones graves pueden causar daños en la membrana, lo que provoca la fuga de líquido del síndrome de dificultad respiratoria aguda.
                    </p>
                    <br>
                    <h2>Riesgos</h2>
                    <p>
                        La mayoría de las personas que padecen síndrome de dificultad respiratoria aguda ya están hospitalizados por otra afección, y muchos están gravemente enfermos. Tienes riesgo especialmente si tienes una infección extendida en el torrente sanguíneo (septicemia).

                        Las personas que tienen antecedentes de alcoholismo crónico tienen un mayor riesgo de padecer síndrome de dificultad respiratoria aguda. Estas personas son más propensas a fallecer por síndrome de dificultad respiratoria aguda
                    </p>
                    <br>
                    <h2>Prevenciones</h2>
                    <p>
                        Cubrirse la boca al toser o estornudar. Usar toallas de papel para contener las secreciones respiratorias y botarlas a la basura después de su uso. Lavarse las manos con agua y jabón después de estar en contacto con secreciones respiratorias y objetos o materiales contaminados.
                    </p>
                    <br>
                    <br>
                    <img src="https://estaticos.muyinteresante.es/media/cache/760x570_thumb/uploads/images/article/58aab39f5bafe84227619617/vitaminad-pulmonia_0.jpg" height="100px">
                    <img src="https://files.rcnradio.com/public/styles/d_img_850x580/public/2018-03/EnfermedadesRespiratorias.jpg.webp?itok=_JiKNjm3" height="100px">
                    <img src="https://consultorsalud.com/wp-content/uploads/2020/02/Pico-de-enfermedades-respiratorias-en-la-capital.jpg" height="100px">
            </section>
            <section class="l" id="enfe4">
                <h2>Apoplegia</h2>
                <br>
                <p>
                    Un accidente cerebrovascular ocurre cuando el suministro de sangre a una parte del cerebro se interrumpe o se reduce, lo que impide que el tejido cerebral reciba oxígeno y nutrientes. Las células cerebrales comienzan a morir en minutos.

                    Un accidente cerebrovascular es una emergencia médica, y el tratamiento oportuno es crucial. La acción temprana puede reducir el daño cerebral y otras complicaciones.

                    La buena noticia es que actualmente muchos menos estadounidenses mueren a causa de un accidente cerebrovascular que en el pasado. Los tratamientos efectivos también pueden ayudar a prevenir la discapacidad por un accidente cerebrovascular
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Si tú o alguien con quien estás puede estar sufriendo un accidente cerebrovascular, presta especial atención al momento en que comenzaron los síntomas. Algunas opciones de tratamiento son más eficaces cuando se administran poco después de que comienza el accidente cerebrovascular.

Los signos y síntomas del accidente cerebrovascular incluyen:

Dificultad para hablar y entender lo que otros están diciendo. Se puede experimentar confusión, dificultar para articular las palabras o para entender lo que se dice.
Parálisis o entumecimiento de la cara, el brazo o la pierna. Puedes desarrollar entumecimiento súbito, debilidad o parálisis en la cara, el brazo o la pierna. Esto a menudo afecta solo un lado del cuerpo. Trata de levantar ambos brazos sobre la cabeza al mismo tiempo. Si un brazo comienza a caer, es posible que estés sufriendo un accidente cerebrovascular. Además, un lado de su boca puede caerse cuando trates de sonreír.
Problemas para ver en uno o ambos ojos. Repentinamente, puedes tener visión borrosa o ennegrecida en uno o ambos ojos, o puedes ver doble.
Dolor de cabeza. Un dolor de cabeza súbito y grave, que puede estar acompañado de vómitos, mareos o alteración del conocimiento, puede indicar que estás teniendo un accidente cerebrovascular.
Problemas para caminar. Puedes tropezar o perder el equilibrio. También puedes tener mareos repentinos o pérdida de coordinación.
                </p>
                <br>
                <h2>Diagnostico</h2>
                <br>
                <p> 
                    Las cosas pasarán muy rápido una vez que llegues al hospital, mientras tu equipo de emergencia trata de determinar qué tipo de derrame cerebral estás teniendo. Esto significa que te harán una tomografía computarizada u otra prueba de imágenes poco después de tu llegada. Los médicos también necesitan descartar otras causas posibles de tus síntomas, como un tumor cerebral o una reacción a un medicamento.
                </p>

                <br>
                <h2>Prevenciones</h2>
                <br>
                <p>
                    Conocer tus factores de riesgo de accidente cerebrovascular, seguir las recomendaciones de tu médico y adoptar un estilo de vida saludable son los mejores pasos que puedes tomar para prevenir esta afección. Si has tenido un accidente cerebrovascular o un ataque isquémico transitorio (AIT), estas medidas podrían ayudar a prevenir otro accidente cerebrovascular. Los cuidados de seguimiento que recibas en el hospital y después también pueden jugar un papel.

Muchas estrategias de prevención de accidentes cerebrovasculares son las mismas que las estrategias de prevención de enfermedades cardíacas. En general, las recomendaciones para un estilo de vida saludable incluyen:

Controlar la presión arterial alta (hipertensión). Esta es una de las cosas más importantes que puedes hacer para reducir tu riesgo de accidente cerebrovascular. Si has tenido un accidente cerebrovascular, bajar tu presión arterial puede ayudar a prevenir un accidente isquémico transitorio o un accidente cerebrovascular posteriores. Con frecuencia, se utilizan cambios en el estilo de vida y medicamentos saludables para tratar la hipertensión arterial.
Reducir la cantidad de colesterol y grasas saturadas en tu dieta. Comer menos colesterol y grasas, especialmente grasas saturadas y grasas trans, puede reducir la acumulación en tus arterias. Si no puedes controlar tu colesterol solo a través de cambios en la dieta, tu médico te puede recetar un medicamento para bajar el colesterol.
Dejar de fumar. Fumar aumenta el riesgo de apoplejía para fumadores y no fumadores expuestos al humo de segunda mano. Dejar de fumar reduce el riesgo de sufrir un accidente cerebrovascular.
Controlar la diabetes. La dieta, el ejercicio y la pérdida de peso pueden ayudarte a mantener tu nivel de glucosa sanguínea dentro de un rango saludable. Si los factores del estilo de vida no parecen ser suficientes para controlar tu diabetes, tu médico puede recetarte medicamentos para la diabetes.
Mantener un peso saludable. El sobrepeso contribuye a otros factores de riesgo de accidente cerebrovascular, como la presión arterial alta, las enfermedades cardiovasculares y la diabetes.
Consumir una dieta rica en frutas y verduras. Una dieta que contenga cinco o más porciones diarias de frutas o verduras puede reducir tu riesgo de accidente cerebrovascular. La dieta mediterránea, que hace hincapié en el aceite de oliva, las frutas, las nueces, las verduras y los cereales integrales, puede ser útil.
Hacer ejercicio en forma regular. El ejercicio aeróbico reduce tu riesgo de accidente cerebrovascular en muchas maneras. El ejercicio puede reducir tu presión arterial, aumentar tus niveles de colesterol bueno y mejorar la salud general de tus vasos sanguíneos y tu corazón. También te ayuda a perder peso, controlar la diabetes y reducir el estrés. Haz gradualmente hasta por lo menos 30 minutos de actividad física moderada, como caminar, trotar, nadar o andar en bicicleta la mayoría de los días de la semana, si no en todos.
Beber alcohol con moderación, si es que lo haces. El consumo excesivo de alcohol aumenta el riesgo de hipertensión arterial, accidentes cerebrovasculares isquémicos y hemorrágicos. El alcohol también puede interactuar con otros medicamentos que estés tomando. Sin embargo, beber cantidades pequeñas a moderadas de alcohol, como una bebida al día, puede ayudar a prevenir el accidente cerebrovascular isquémico y disminuir la tendencia a la coagulación de la sangre. Habla con tu médico acerca de lo que es apropiado para ti.
Tratar la apnea obstructiva del sueño (AOS). El médico puede recomendar un estudio del sueño si tienes síntomas de apnea obstructiva del sueño, un trastorno del sueño que hace que dejes de respirar por períodos cortos repetidamente mientras duermes. El tratamiento para la apnea obstructiva del sueño incluye un dispositivo que administra presión positiva en las vías respiratorias a través de una máscara para mantenerlas abiertas mientras duermes.
Evitar las drogas ilegales. Ciertas drogas callejeras, como la cocaína y la metanfetamina, son factores de riesgo establecidos para un accidente isquémico transitorio o un accidente cerebrovascular.
                </p>
                <br>
                <br><br>
                <img src="https://www.mavifarmaceutica.com/static/media/imagenes/20200910111955-471912.jpg" height="100px" alt="">
                <img src="https://www.mavifarmaceutica.com/static/media/imagenes/20200910112203-128701.jpg" height="100px" alt="">
                
                
            
            
           </section> 
           


    </article>










<script src="./js/index.js"></script>
</body>
</html>