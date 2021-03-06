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
                      La COVID-19 afecta de distintas maneras en funci??n de cada persona. La mayor??a de las personas que se contagian presentan s??ntomas de intensidad leve o moderada, y se recuperan sin necesidad de hospitalizaci??n.
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
                      La diabetes es una enfermedad en la que los niveles de glucosa (az??car) de la sangre est??n muy altos. La glucosa proviene de los alimentos que consume. La insulina es una hormona que ayuda a que la glucosa entre a las c??lulas para suministrarles energ??a.
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
                      La hipertensi??n arterial es una enfermedad cr??nica en la que aumenta la presi??n con la que el coraz??n bombea sangre a las arterias, para que circule por todo el cuerpo.
                  </p>
                  <a href="../formularioHIPER.jsp" class="read-more"><font color="white">Realizar test</font></a>
                </div>
              </div>
            </div>
          </li>
          <li><a href="/ProyectoEXTRA/cerrarsesionservlet" class="menu-item">Cerrar Sesi??n</a></li>
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
                    La funci??n de una oficina de la OMS en el pa??s es responder a las solicitudes del pa??s anfitri??n para apoyar la formulaci??n de pol??ticas para el desarrollo sanitario sostenible, adoptando un enfoque hol??stico del sistema de salud.

                    Esto incluye brindar orientaci??n, establecer relaciones locales para implementar la cooperaci??n t??cnica, establecer normas y acuerdos y garantizar que las medidas de salud p??blica se coordinen y se implementen durante las crisis.

                </p>
                <img src="https://youtooproject.com/wp-content/uploads/2021/02/Bandera_Australia_Viajar.jpg" height="100px" alt="">
                <br>
                <a href="#grafica" onclick="mostrar('grafica')">Presione aqui para mostrar la grafica de las enfermedades</a>

            
            </section>


            <section class="l" id="grafica">
                <p>Presione la imagen para mostrar la grafica</p>
                <br>

             <a class="next" onclick="grafica1()"><img src="./py/gr??fico-de-barras-3.jpg" height="150px"></a>

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
                    Las enfermedades cardiovasculares son un grupo amplio de padecimientos entre los que se incluyen las enfermedades del coraz??n y las relacionadas con los vasos sangu??neos como la cardiopat??a coronaria, reum??tica, cong??nita,
                    cerebrovasculares, arteriopat??as perif??ricas y trombosis venosas profundas y embolias pulmonares, dijo el doctor Juan Guti??rrez Mej??a del Tec de Monterrey.
                </p>
                <br>
                <h2>S??ntomas</h2>
                <br>
                <p>
                    Dificultad para respirar, n??useas, v??mito, dolor en la mand??bula, espalda, pecho, brazos, hombro izquierdo; mareos o desmayos, sudores fr??os y palidez, aunque cada enfermedad tiene su sintomatolog??a propia; las de los vasos 
                    sangu??neos suelen no presentar molestias, y su primera manifestaci??n puede ser un ataque al coraz??n, dijo Malaqu??as L??pez de la UNAM. 
                </p>
                <br>
                <h2>Diagn??stico</h2>
                <br>
                <p>
                    Para detectar este padecimiento  se requiere la realizaci??n de un electrocardiograma, una prueba sencilla e indolora que detecta y registra la actividad el??ctrica del coraz??n. Muestra qu?? tan r??pido late y con qu?? ritmo (estable o irregular)
                    y registra la potencia y la sincronizaci??n de los impulsos el??ctricos a medida que pasan por cada parte del coraz??n.
                    Otras opciones son la prueba de esfuerzo, un ecocardiograf??a o una radiograf??a de t??rax. 
                </p>
                <br>
                <h2>Prevenci??n</h2>
                <br>
                <p>
                    El riesgo cardiovascular se puede reducir realizando actividades f??sicas, evitando fumar o inhalar humo del mismo,  con dieta sana enfocada en verduras y frutas  y manteniendo un peso saludable, agreg?? el especialista Malaqu??as L??pez.
                </p>
                <br><br>
                <img src="https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small/public/articulos/enfermedades-cardiovasculares.jpg" height="100px" alt="">
                <img src="https://invdes.com.mx/wp-content/uploads/2019/02/28-02-19-cardiovasculares.jpg" height="100px" alt="">
                <img src="https://www.meganoticias.mx/uploads/noticias/enfermedades-cardiovasculares-primera-causa-de-muerte-122533.jpg" height="100px" alt="">
            </section>
            
            <section class="l" id="enfe2">
                <h2>C??ncer (Tumores malignos)</h2>
                <p> El c??ncer surge cuando las c??lulas de alguna parte del cuerpo comienzan a crecer sin control. Las c??lulas normales crecen, se dividen y mueren en una forma ordenada. Sin embargo, las c??lulas cancerosas crecen, se dividen 
                    y en lugar de morir, viven m??s tiempo que las normales para continuar formando nuevas c??lulas anormales, explic?? el doctor Malaqu??as L??pez, de la Facultad de Medicina de la UNAM.
                </p>
                <br>
                <h2>Sintomas</h2>
                <p>
                    Dependen del lugar y tama??o del tumor . En general son p??rdida de peso inexplicable, fiebre, cansancio cr??nico, dolor, cambios y modificaciones en la piel. ???Los diagn??sticos tempranos son importantes, pues la mayor??a de las neoplasias se diagnostican en fases avanzadas???.
                </p>
                <br>
                <h2>Diagnostico</h2>
                <br>
                <p>
                    Para cada tipo de c??ncer existen pruebas distintas, entre las que se encuentran las biopsias y an??lisis de sangre y orina.  
                </p>
                <br>
                <h2>prevenciones</h2>
                <p>
                   
                    Mantener un estilo de vida saludable . Evita el cigarro, sobrepeso y obesidad, la inactividad f??sica, la exposici??n prolongada al sol sin protecci??n y las infecciones por virus de las hepatitis B (VHB) y C (VHC) o por papiloma humano (PVH).                 
                </p>
                <br>
                <h2>NUmeros de afectados</h2>
                <p>
                    El c??ncer es la tercera causa de muerte en M??xico y seg??n estimaciones de la Uni??n Internacional contra el C??ncer, cada a??o se suman m??s de 128,000 casos de mexicanos.
                    En 2008, el c??ncer caus?? m??s de 7.5 millones de defunciones en el mundo. Los m??s mortales son los de pulm??n, est??mago, h??gado, colon y mama. Para 2030 se prev?? que la mortandad por este padecimiento aumente a 13 millones, seg??n la  OMS .
                </p>
                <br><br>
                <img src="https://thumbs.dreamstime.com/z/c??ncer-y-neoplasma-comparaci??n-diferencia-entre-tumores-malignos-benignos-el-tumor-benigno-tiene-una-c??psula-las-c??lulas-de-203883858.jpg" height="100px" alt="">
                <img src="https://image.slidesharecdn.com/caractersticasclnicastumoresbenignosymalignos-121207192428-phpapp01/95/caractersticas-clnicas-tumores-benignos-y-malignos-3-638.jpg?cb=1354908305" height="100px" alt="">
                <img src="https://www.redaccionmedica.com/images/enfermedades/tumores-cerebrales-adultos.jpg" height="100px" alt="">

            </section>
            <section class="l" id="enfe3">
                <h2>Enfermedades respiratorias</h2>
                
                <p> 
                    El s??ndrome de dificultad respiratoria aguda ocurre cuando se acumula l??quido en los sacos de aire el??sticos y diminutos (alv??olos) de los pulmones. El l??quido impide que los pulmones se llenen con suficiente aire, por lo tanto, llega menos ox??geno al torrente sangu??neo. Esto priva a los ??rganos del ox??geno que necesitan para funcionar.

                    Normalmente, el s??ndrome de dificultad respiratoria aguda ocurre en personas que ya est??n gravemente enfermas o que tienen lesiones importantes. Una grave dificultad para respirar ???que es el s??ntoma principal del s??ndrome de dificultad respiratoria aguda??? suele aparecer entre unas horas y unos d??as despu??s de la lesi??n o infecci??n desencadenantes.

                    Muchas de las personas que padecen el s??ndrome de dificultad respiratoria aguda no sobreviven. El riesgo de muerte aumenta con la edad y la gravedad de la enfermedad. De las personas con s??ndrome de dificultad respiratoria aguda que sobreviven, algunas se recuperan por completo mientras que otras presentan da??os duraderos en los pulmones.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        La causa mec??nica del s??ndrome de dificultad respiratoria aguda es la fuga de l??quido de los vasos sangu??neos m??s peque??os de los pulmones en direcci??n a los diminutos sacos de aire donde se oxigena la sangre. Normalmente, una membrana protectora conserva el l??quido en los vasos sangu??neos. Sin embargo, las enfermedades o lesiones graves pueden causar da??os en la membrana, lo que provoca la fuga de l??quido del s??ndrome de dificultad respiratoria aguda.
                    </p>
                    <br>
                    <h2>Riesgos</h2>
                    <p>
                        La mayor??a de las personas que padecen s??ndrome de dificultad respiratoria aguda ya est??n hospitalizados por otra afecci??n, y muchos est??n gravemente enfermos. Tienes riesgo especialmente si tienes una infecci??n extendida en el torrente sangu??neo (septicemia).

                        Las personas que tienen antecedentes de alcoholismo cr??nico tienen un mayor riesgo de padecer s??ndrome de dificultad respiratoria aguda. Estas personas son m??s propensas a fallecer por s??ndrome de dificultad respiratoria aguda
                    </p>
                    <br>
                    <h2>Prevenciones</h2>
                    <p>
                        Cubrirse la boca al toser o estornudar. Usar toallas de papel para contener las secreciones respiratorias y botarlas a la basura despu??s de su uso. Lavarse las manos con agua y jab??n despu??s de estar en contacto con secreciones respiratorias y objetos o materiales contaminados.
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
                    Un accidente cerebrovascular ocurre cuando el suministro de sangre a una parte del cerebro se interrumpe o se reduce, lo que impide que el tejido cerebral reciba ox??geno y nutrientes. Las c??lulas cerebrales comienzan a morir en minutos.

                    Un accidente cerebrovascular es una emergencia m??dica, y el tratamiento oportuno es crucial. La acci??n temprana puede reducir el da??o cerebral y otras complicaciones.

                    La buena noticia es que actualmente muchos menos estadounidenses mueren a causa de un accidente cerebrovascular que en el pasado. Los tratamientos efectivos tambi??n pueden ayudar a prevenir la discapacidad por un accidente cerebrovascular
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Si t?? o alguien con quien est??s puede estar sufriendo un accidente cerebrovascular, presta especial atenci??n al momento en que comenzaron los s??ntomas. Algunas opciones de tratamiento son m??s eficaces cuando se administran poco despu??s de que comienza el accidente cerebrovascular.

Los signos y s??ntomas del accidente cerebrovascular incluyen:

Dificultad para hablar y entender lo que otros est??n diciendo. Se puede experimentar confusi??n, dificultar para articular las palabras o para entender lo que se dice.
Par??lisis o entumecimiento de la cara, el brazo o la pierna. Puedes desarrollar entumecimiento s??bito, debilidad o par??lisis en la cara, el brazo o la pierna. Esto a menudo afecta solo un lado del cuerpo. Trata de levantar ambos brazos sobre la cabeza al mismo tiempo. Si un brazo comienza a caer, es posible que est??s sufriendo un accidente cerebrovascular. Adem??s, un lado de su boca puede caerse cuando trates de sonre??r.
Problemas para ver en uno o ambos ojos. Repentinamente, puedes tener visi??n borrosa o ennegrecida en uno o ambos ojos, o puedes ver doble.
Dolor de cabeza. Un dolor de cabeza s??bito y grave, que puede estar acompa??ado de v??mitos, mareos o alteraci??n del conocimiento, puede indicar que est??s teniendo un accidente cerebrovascular.
Problemas para caminar. Puedes tropezar o perder el equilibrio. Tambi??n puedes tener mareos repentinos o p??rdida de coordinaci??n.
                </p>
                <br>
                <h2>Diagnostico</h2>
                <br>
                <p> 
                    Las cosas pasar??n muy r??pido una vez que llegues al hospital, mientras tu equipo de emergencia trata de determinar qu?? tipo de derrame cerebral est??s teniendo. Esto significa que te har??n una tomograf??a computarizada u otra prueba de im??genes poco despu??s de tu llegada. Los m??dicos tambi??n necesitan descartar otras causas posibles de tus s??ntomas, como un tumor cerebral o una reacci??n a un medicamento.
                </p>

                <br>
                <h2>Prevenciones</h2>
                <br>
                <p>
                    Conocer tus factores de riesgo de accidente cerebrovascular, seguir las recomendaciones de tu m??dico y adoptar un estilo de vida saludable son los mejores pasos que puedes tomar para prevenir esta afecci??n. Si has tenido un accidente cerebrovascular o un ataque isqu??mico transitorio (AIT), estas medidas podr??an ayudar a prevenir otro accidente cerebrovascular. Los cuidados de seguimiento que recibas en el hospital y despu??s tambi??n pueden jugar un papel.

Muchas estrategias de prevenci??n de accidentes cerebrovasculares son las mismas que las estrategias de prevenci??n de enfermedades card??acas. En general, las recomendaciones para un estilo de vida saludable incluyen:

Controlar la presi??n arterial alta (hipertensi??n). Esta es una de las cosas m??s importantes que puedes hacer para reducir tu riesgo de accidente cerebrovascular. Si has tenido un accidente cerebrovascular, bajar tu presi??n arterial puede ayudar a prevenir un accidente isqu??mico transitorio o un accidente cerebrovascular posteriores. Con frecuencia, se utilizan cambios en el estilo de vida y medicamentos saludables para tratar la hipertensi??n arterial.
Reducir la cantidad de colesterol y grasas saturadas en tu dieta. Comer menos colesterol y grasas, especialmente grasas saturadas y grasas trans, puede reducir la acumulaci??n en tus arterias. Si no puedes controlar tu colesterol solo a trav??s de cambios en la dieta, tu m??dico te puede recetar un medicamento para bajar el colesterol.
Dejar de fumar. Fumar aumenta el riesgo de apoplej??a para fumadores y no fumadores expuestos al humo de segunda mano. Dejar de fumar reduce el riesgo de sufrir un accidente cerebrovascular.
Controlar la diabetes. La dieta, el ejercicio y la p??rdida de peso pueden ayudarte a mantener tu nivel de glucosa sangu??nea dentro de un rango saludable. Si los factores del estilo de vida no parecen ser suficientes para controlar tu diabetes, tu m??dico puede recetarte medicamentos para la diabetes.
Mantener un peso saludable. El sobrepeso contribuye a otros factores de riesgo de accidente cerebrovascular, como la presi??n arterial alta, las enfermedades cardiovasculares y la diabetes.
Consumir una dieta rica en frutas y verduras. Una dieta que contenga cinco o m??s porciones diarias de frutas o verduras puede reducir tu riesgo de accidente cerebrovascular. La dieta mediterr??nea, que hace hincapi?? en el aceite de oliva, las frutas, las nueces, las verduras y los cereales integrales, puede ser ??til.
Hacer ejercicio en forma regular. El ejercicio aer??bico reduce tu riesgo de accidente cerebrovascular en muchas maneras. El ejercicio puede reducir tu presi??n arterial, aumentar tus niveles de colesterol bueno y mejorar la salud general de tus vasos sangu??neos y tu coraz??n. Tambi??n te ayuda a perder peso, controlar la diabetes y reducir el estr??s. Haz gradualmente hasta por lo menos 30 minutos de actividad f??sica moderada, como caminar, trotar, nadar o andar en bicicleta la mayor??a de los d??as de la semana, si no en todos.
Beber alcohol con moderaci??n, si es que lo haces. El consumo excesivo de alcohol aumenta el riesgo de hipertensi??n arterial, accidentes cerebrovasculares isqu??micos y hemorr??gicos. El alcohol tambi??n puede interactuar con otros medicamentos que est??s tomando. Sin embargo, beber cantidades peque??as a moderadas de alcohol, como una bebida al d??a, puede ayudar a prevenir el accidente cerebrovascular isqu??mico y disminuir la tendencia a la coagulaci??n de la sangre. Habla con tu m??dico acerca de lo que es apropiado para ti.
Tratar la apnea obstructiva del sue??o (AOS). El m??dico puede recomendar un estudio del sue??o si tienes s??ntomas de apnea obstructiva del sue??o, un trastorno del sue??o que hace que dejes de respirar por per??odos cortos repetidamente mientras duermes. El tratamiento para la apnea obstructiva del sue??o incluye un dispositivo que administra presi??n positiva en las v??as respiratorias a trav??s de una m??scara para mantenerlas abiertas mientras duermes.
Evitar las drogas ilegales. Ciertas drogas callejeras, como la coca??na y la metanfetamina, son factores de riesgo establecidos para un accidente isqu??mico transitorio o un accidente cerebrovascular.
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