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
<link rel="stylesheet" href="./css/China.css">
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
{x:'Influenzia Aviar 20%', y:30, z:3},
{x:'Clonorches sininsis  20%', y:20, z:4},
{x:"Colera 15%", y:20, z:5},
{x:'Kawasaki 5% ', y:10, z:6},
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
                <H1>China</H1>
                <br>
                <h4>Las enfermedades en China asi como su salud.</h4>
                <br>
                <p>
                    La Medicina Tradicional China (MTCH), medicina ancestral originaria de la antigua China, ha perdurado y ha evolucionado a lo largo de la historia. Durante la segunda mitad del siglo XX, esta terapia ha ido introduciéndose en los países occidentales y ha obtenido una gran aceptación entre los usuarios de estos países que han encontrado una medicina diferente, nada agresiva y muy preventiva, mediante la cual se obtienen resultados eficaces y rápidamente. La Medicina Tradicional China es una medicina holística ya que entiende que no existen enfermedades, sino enfermos, tiene en consideración no sólo lo que sucede en el órgano, sino también lo que sucede en todo el organismo, la manera de manifestarse, como responde a las influencias externas y a los estímulos del entorno. 1

                </p>
                <img src="./img/China.png" height="100px" alt="">
                <br>
                <a href="#grafica" onclick="mostrar('grafica')">Presione aqui para mostrar la grafica de las enfermedades</a>

            
            </section>


           

            <section class="tercero" >
                <h2>Aqui una de las enfermedades mas comunes en este pais </h2>
                <br>
                    <a href="#enfe1" onclick="mostrar('enfe1')"><img src="./img/cardio.jpg" class="p" ></a>
                    <a href="#enfe2" onclick="mostrar('enfe2')"><img src="./img/tubercolosis.jpg" class="p"></a>
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="./img/gripe-aviar-banner.png" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="./img/clonorchis-sinensis-fundacion-io-1024x1024.png" class="p"></a>
                    <a href="#enfe5" onclick="mostrar('enfe5')"><img src="./img/colera-fundacion-io-1024x1024.png" class="p"></a>
                    <a href="#enfe6" onclick="mostrar('enfe6')"><img src="./img/Kawasaki.jpg" class="p"></a>
                    
                
            </section>

            <section class="l" id="grafica">
                <p>Presione la imagen para mostrar la grafica </p>
                <br>

             <a class="next" onclick="grafica1()"><img src="./py/gráfico-de-barras-3.jpg" height="150px"></a>

            <div id='graph'></div>





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
                 <h2>Tuberculosis</h2>
                <br>
                <p>
                    Tuberculosis (TB) is a potentially serious infectious disease that mainly affects your lungs. The bacteria that cause tuberculosis are spread from one person to another through tiny droplets released into the air via coughs and sneezes.

                    Once rare in developed countries, tuberculosis infections began increasing in 1985, partly because of the emergence of HIV, the virus that causes AIDS. HIV weakens a person's immune system so it can't fight the TB germs. In the United States, because of stronger control programs, tuberculosis began to decrease again in 1993, but remains a concern.
                    
                    Many strains of tuberculosis resist the drugs most used to treat the disease. People with active tuberculosis must take several types of medications for many months to eradicate the infection and prevent development of antibiotic resistance.  
                </p>  
                <br>
                <h2>Causas</h2>
                <br>
                <p>
                    La tuberculosis es causada por bacterias que se contagian de persona a persona a través de gotitas microscópicas diseminadas en el aire. Esto puede suceder cuando una persona con la forma activa de la tuberculosis no tratada tose, habla, estornuda, escupe, se ríe, o canta.

                    Aunque la tuberculosis es contagiosa, no es fácil contraerla. Es mucho más probable que te contagies de tuberculosis de una persona con quien vives o trabajas que de un desconocido. La mayoría de la gente con tuberculosis activa, que se ha hecho un tratamiento apropiado con medicamentos por al menos dos semanas, ya no es contagiosa.
                    
                       
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Si bien tu cuerpo puede hospedar la bacteria que causa la tuberculosis (TB), tu sistema inmunitario generalmente evita que te enfermes. Por esta razón, los médicos distinguen entre:
                    La tuberculosis latente. Cuando tienes esta afección, estás infectado de tuberculosis, pero la bacteria permanece en tu organismo en estado inactivo y no presentas síntomas. La tuberculosis latente, también llamada tuberculosis inactiva o infección con tuberculosis, no es contagiosa. Se puede convertir en tuberculosis activa, por lo que el tratamiento es importante para la persona con tuberculosis latente y para ayudar a evitar el contagio. Aproximadamente 2 mil millones de personas tienen tuberculosis latente.
                    La tuberculosis activa. Esta afección te enferma y, en la mayoría de los casos, es contagiosa. Puede ocurrir en las primeras semanas después de la infección con la bacteria de la tuberculosis, o puede ocurrir años después.
                    Los signos y síntomas de la tuberculosis activa incluyen:

                    Tos que dura tres semanas o más
                    Tos con sangre
                    Dolor en el pecho o dolor al respirar o toser
                    Pérdida de peso involuntaria
                    Fatiga
                    Fiebre
                    Sudoraciones nocturnas
                    Escalofríos
                    Pérdida de apetito
                    La tuberculosis también puede afectar otras partes del cuerpo, incluidos los riñones, la columna vertebral o el cerebro. Cuando la tuberculosis se produce fuera de los pulmones, los signos y síntomas varían según los órganos involucrados. Por ejemplo, la tuberculosis de la columna vertebral puede provocar dolor de espalda y la tuberculosis en los riñones puede causar presencia de sangre en la orina.</p>
                <br>
                <h2>Trataminto</h2>
                <br>
                <p>
                    Si tus resultados para infección latente de tuberculosis son positivos, tu doctor quizás te indique que tomes medicamentos para reducir tu riesgo de que se convierta en tuberculosis activa. El único tipo de tuberculosis que es contagiosa es la activa, cuando afecta los pulmones. Así que si puedes evitar que la tuberculosis latente se vuelva activa, no se la contagiarás a nadie más.   
                </p>
                <br>
                <img src="https://laverdadonline.com/wp-content/uploads/2018/11/epoc.jpg" height="100px" alt="">
                <img src="https://www.avancesenrespiratorio.com/arxius/imatgesbutlleti/Foto1_Patologia_EPOC_v2.png" height="100px" alt="">
                <img src="https://media.istockphoto.com/vectors/chronic-obstructive-pulmonary-disease-or-copd-lung-have-breathing-vector-id1249098906?s=612x612" height="100px" alt="">
            </section>
            <section class="l" id="enfe3">
                <h2>virus de la influenza aviar A(H7N9)</h2>
                
                <p> 
                    Los casos de infecciones en humanos por el virus de la influenza aviar A(H7N9) de linaje asiático ("virus H7N9 de origen asiático") se reportaron por primera vez en China en marzo del 2013. Desde entonces, se han reportado epidemias anuales de infecciones esporádicas en humanos por los virus H7N9 de origen asiático en China. China está actualmente atravesando su 6ª epidemia de infecciones por el virus H7N9 de origen asiático en humanos.   
                    Desde la primera hasta la quinta epidemia, alrededor del 39 por ciento de las personas con infección confirmada por el virus H7N9 de origen asiático ha muerto.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        La mayoría de las infecciones en los seres humanos por los virus de la influenza aviar, incluidos los virus H7N9 de origen asiático, se ha producido por estar expuestos a aves de corral infectadas o ambientes contaminados. Los virus H7N9 de origen asiático siguen circulando en aves de corral en China. La mayoría de los pacientes con infección por el virus H7N9 tenían enfermedades respiratorias graves (p. ej., neumonía). En China se registraron pocos casos de propagación limitada de persona a persona con este virus pero no hay pruebas que demuestren una propagación sostenida entre personas. Algunos casos de infecciones en humanos por el virus H7N9 de origen asiático se han reportado fuera de China, Hong Kong o Macao pero todas estas infecciones ocurrieron entre personas que viajaron a China antes de enfermarse. Dentro de los Estados Unidos, no se detectaron los virus H7N9 de origen asiático en personas ni en aves.
                    </p>
                    <br>
                    <h2>Riesgos</h2>
                    <p>
                        Si bien el riesgo actual que representa el virus H7N9 de origen asiático para la salud pública es bajo, el potencial pandémico de este virus es preocupante. Los virus de la influenza cambian constantemente y es posible que este virus adquiera la capacidad de propagarse fácilmente y de manera sostenida entre las personas, desencadenando un brote mundial de la enfermedad (p. ej., una pandemia). De hecho, de los virus de la nueva influenza A que son de especial preocupación para la salud pública, el H7N9 de linaje asiático está clasificado por la  Herramienta de evaluación del riesgo de influenza por tener el mayor potencial de causar una pandemia así como también presenta un mayor riesgo de causar un posible impacto grave en la salud pública si el virus produjera una transmisión sostenida entre personas
                    </p>
                    <br>
                    <h2>Prevenciones</h2>
                    <p>
                        Los CDC están siguiendo de cerca esta situación del virus H7N9 de origen asiático y trabajan conjuntamente con socios nacionales e internacionales. Los CDC toman medidas de preparación de rutina para contrarrestar una pandemia a medida que son identificadas, tales como el desarrollo de virus candidatos para la vacuna (CVV, por sus siglas en inglés) para usar en la producción de una vacuna en caso de que fuera necesario. Los CDC han preparado una evaluación de riesgo del virus H7N9 de origen asiático. Otras actividades de preparación de rutina incluyen la revisión de los nuevos virus y secuencias de virus para evaluar sus propiedades genéticas y antigénicas además de su susceptibilidad antiviral. Esta información comunica acerca del proceso de evaluación de riesgos actual, que determina las medidas que deberán tomarse. Los CDC también publicaron directrices para médicos y autoridades de salud pública en los Estados Unidos, y además brindaron información para personas que viajan a China. Los CDC brindarán información actualizada a medida que esté disponible. 
                        (AUN NO HAY)
                    </p>
                    <br>
                    <img src="https://thumbs.dreamstime.com/z/ejemplo-de-la-gripe-aviar-136705077.jpg" height="50px">
                    <img src="https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/article/6076b16d5cafe81b94c3983c/gripe_0.jpg" height="50px">
                    <img src="https://mexiconuevaera.com/sites/default/files/styles/interior_noticia/public/imagenes/2017/Ene/23/gripe-aviar-hong-kong1.jpg?itok=jY-ZNl_s" height="50px">
            </section>
            <section class="l" id="enfe4">
                <h2>Clonorchis sinensis</h2>
                <br>
                <p>
                    El reservorio son los gatos, perros, ratas, cerdos, caracoles (Bythnia, Alocinma, Semisulcospira). El vehículo de transmisión son los pescados de agua dulce y ocasionalmente cigalas o cangrejos de río. La infección se produce al ingerir pescados de agua dulce, crudos, secos, en salazón o escabeche cuya carne contiene larvas enquistadas. La larva queda libre en el duodeno, penetra en el árbol biliar y emigra a los conductos biliares secundarios, donde al cabo de un mes se convierte en gusano adulto. Los huevos son eliminados por las heces, el caracol ingiere los miracidios de las heces que eclosionan en el intestino, penetran en tejido, se desarrolla la larva que sale al agua donde es ingerida por los peces de agua dulce completando el ciclo que dura aproximadamente 3 meses. Los individuos infectados pueden expulsar huevos hasta 30 años después. 
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Presenta sintomatología biliar como colangitis u obstrucción biliar con crisis de colangitis y eosinofilia asociada con fiebre, escalofríos, hepatomegalia dolorosa, ictericia leve. Asociación elevada con colangiocarcinoma en enfermos con infecciones graves y de larga duración. Los gusanos adultos pueden afectar los conductos pancreáticos, ocasionando una pancreatitis aguda.
                    Identificación de los huevos en las heces o en aspirado duodenal. Ocasionalmente serología.
                </p>
                <br>
                <h2>Tratamiento</h2>
                <br>
                <p> 
                    25 mg/kg /8h/1-2 día o 40 mg/kg en monodosis. O albendazol 10 mg/kg/7d. En los niños: Praziquantel 25 mg/kg/8h/1 día.
                </p>

                <br>
                <h2>Prevenciones</h2>
                <br>
                <p>
                    Educar en la preparación de los peces de agua dulce: cocción, irradiación o congelación a -10ºC durante 5 días. Evitar el consumo de pescado crudo o poco cocinado. Eliminación sanitaria de las excretas. Control del pescado o derivados cuando provienen de zonas endémicas. No se transmite de persona a persona.  
                </p>
                
                <br><br>
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/03/Clonorchis_sinensis_2.png" height="100px" alt="">
                <img src="https://image.slidesharecdn.com/paragonimusmexicanus-130519193521-phpapp01/95/paragonimus-mexicanus-7-638.jpg?cb=1368993974" height="100px" alt="">
                <img src="https://digestivesystemsxavier.weebly.com/uploads/1/9/2/4/19246545/3510191_orig.jpg" height="100px" alt="">
                
            </section>
            <section class="l" id="enfe5">   
                <h2>Cólera</h2>
                <br>
                <p>
                    Enfermedad diarreica aguda que puede ocasionar una deshidratación severa y llevar a la muerte en pocas horas si no se trata rápidamente. El agente responsable del proceso infeccioso es Vibrio cholerae, bacilo gramnegativo no esporulado y móvil gracias a flagelos de disposición polar. En las áreas endémicas, V. choleraese encuentra en las aguas de superficie, en las aguas saladas de estuarios y bahías, y en diversos alimentos marinos como mejillones, berberechos, cangrejos y pescado.
                    La virulencia de V. cholerae se debe a una potente toxina que produce una diarrea secretoria masiva. La toxina estimula el AMP cíclico inhibiendo el sistema de transporte de absorción en las células con vellosidades, y activa el sistema de transporte por la excreción del cloruro localizado en las células de las criptas intestinales. En consecuencia, se origina la acumulación de cloruro sódico en la luz del intestino. Para mantener la osmolalidad del intestino, se produce una secreción excesiva de agua hacia la luz, que acaba originando la diarrea acuosa con perdidas de hasta un litro de agua y electrolitos en una hora.  
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        El microorganismo está ampliamente disperso en las riberas de ríos asiáticos, africanos y americanos, pantanos y aguas de costas. La principal vía de transmisión es la ingestión de agua o alimentos contaminados con la bacteria. Los factores de virulencia protegen al organismo y le permiten adherirse a la mucosa intestinal. De las ocho pandemias descritas deste 1827, el serogrupo O:1 de V. cholerae ha estado implicado en siete. El serogrupo O:1 tiene dos biotipos: clásico y El Tor. Este último biotipo estuvo implicado en la séptima pandemia en 1961, originada en Indonesia y que se mantuvo activa durante cuatro décadas. La octava pandemia fue debida al serogrupo O:139, y fue controlada en 1993, el año en que se desató.

                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <p>
                        Tras un período de incubación de 24 a 48 horas, se produce una diarrea acuosa de comienzo brusco, seguida de vómitos. En las formas graves los adultos pueden sufrir pérdidas de un litro por hora. De no reponerse estas pérdidas de inmediato las consecuencias son letales. Se produce fiebre, calambres musculares, debido a la depleción de potasio, hipotensión postural, deshidratación, acidosis metabólica, insuficiencia renal, debilidad, taquicardia, pulso débil y somnolencia, que se agrava hasta el coma cuando hay una considerable pérdida de masa corporal.

                    </p>
                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        Lo más importante es la restitución inmediata de agua y electrolitos, tanto por vía oral como intravenosa. Los antibióticos no son indispensables en el tratamiento. El fármaco de elección es doxiciclina que abrevia el tiempo de recuperación de la enfermedad. Ciprofloxacino, ampicilina o cotrimoxazol son las principales alternativas.    
                    </p>
                    <br>
                    <h2>Prevencion</h2>
                    <br>
                    <p>
                        El control y la prevención dependen de la higiene del agua. No hay propagación de una persona a otra. El incremento de las medidas de higiene en las áreas endémicas es muy importante para la prevención del cólera, y el control de la enfermedad en las áreas endémicas. Estas medidas incluyen la filtración y cloración de los sistemas de agua, así como la educación sanitaria pública. La vacuna del cólera con microorganismos muertos tiene un valor limitado, ya que confiere una protección parcial (al 50% de las personas vacunadas) de duración breve (3-6 meses). En la actualidad la recomendación a las personas que viajan a las zonas endémicas es limitado.  
                    </p>
                    <br>
                 
            </section>
            <section class="l" id="enfe6">
                <h2>Kawasaki</h2>
                <br>
                <p>
                    La enfermedad de Kawasaki causa hinchazón (inflamación) en las paredes de las arterias medianas de todo el cuerpo. Afecta principalmente a los niños. La inflamación tiende a afectar las arterias coronarias, que suministran sangre al músculo cardíaco.

                    La enfermedad de Kawasaki algunas veces se denomina síndrome de los ganglios linfáticos mucocutáneos porque también afecta los ganglios que se hinchan durante una infección (ganglios linfáticos), la piel y las membranas mucosas dentro de la boca, la nariz y la garganta.
                    
                    Los signos de la enfermedad de Kawasaki, como fiebre alta y descamación de la piel, pueden ser atemorizantes. La buena noticia es que la enfermedad de Kawasaki suele ser tratable y la mayoría de los niños se recuperan de ella sin problemas graves.   
                </p>  
                <br>
                <h2>Causas</h2>
                <br>
                <p>
                    Nadie sabe qué causa la enfermedad de Kawasaki, pero los científicos no creen que la enfermedad sea contagiosa de persona a persona. Varias teorías relacionan la enfermedad con bacterias, virus u otros factores ambientales, pero ninguna ha sido probada. Ciertos genes pueden hacer que tu hijo tenga mayor probabilidad de contraer la enfermedad de Kawasaki.   
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Los signos y síntomas de la enfermedad de Kawasaki generalmente aparecen en tres fases.

                    Primera etapa
                    Los signos y síntomas de la primera fase pueden incluir:
                    
                    Fiebre que con frecuencia es superior a 102,2 °F (39 °C) y dura más de tres días
                    Ojos extremadamente rojos sin una secreción espesa
                    Erupción en la parte principal del cuerpo y en la zona genital
                    Labios rojos, secos y agrietados y lengua extremadamente roja e hinchada
                    Piel roja e hinchada en las palmas de las manos y en las plantas de los pies
                    Ganglios linfáticos inflamados en el cuello y tal vez en otra parte
                    Irritabilidad
                    Segunda etapa
                    En la segunda fase de la enfermedad, tu hijo puede presentar:
                    
                    Descamación de la piel de las manos y de los pies, sobre todo en las puntas de los dedos, a menudo, en forma de láminas grandes
                    Dolor articular
                    Diarrea
                    Vómitos
                    Dolor abdominal
                    Tercera etapa
                    En la tercera fase de la enfermedad, los signos y síntomas desaparecen lentamente, a menos que se manifiesten complicaciones. Es posible que transcurran hasta ocho semanas antes de que los niveles de energía parezcan normales de nuevo. </p>
                <br>
                <h2>Trataminto</h2>
                <br>
                <p>
                    La enfermedad de Kawasaki generalmente se trata en el hospital con una dosis intravenosa de inmunoglobulina. La aspirina también puede ser parte del tratamiento. Pero no le dé aspirina a su hijo a menos que el profesional de la salud se lo indique. La aspirina puede causar síndrome de Reye en niños. Esta es una enfermedad rara y grave que puede afectar el cerebro y el hígado.

                    En general, el tratamiento funciona. Pero si no funciona lo suficientemente bien, el proveedor también puede darle a su hijo otros medicamentos para combatir la inflamación. Si la enfermedad afecta el corazón de su hijo, podría necesitar medicamentos adicionales, cirugía u otros procedimientos médicos.</p>
                
                <img src="https://www.healthychildren.org/SiteCollectionImagesArticleImages/Signs_Symptoms_Kawasaki_Disease_es.jpg" height="100px" alt="">
                <img src="http://www.cienciacierta.uadec.mx/wp-content/uploads/2019/11/1portada.jpg" height="100px" alt="">
                <img src="https://vivirenelpoblado.com/wp-content/uploads/2020/05/Gráfico-Enfermedad-de-Kawasaki-500x500.jpg" height="100px" alt="">
           </section> 
           


    </article>







<script src="./js/index.js"></script>
</body>
</html>