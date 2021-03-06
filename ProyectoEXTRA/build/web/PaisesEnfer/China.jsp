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
                <H1>China</H1>
                <br>
                <h4>Las enfermedades en China asi como su salud.</h4>
                <br>
                <p>
                    La Medicina Tradicional China (MTCH), medicina ancestral originaria de la antigua China, ha perdurado y ha evolucionado a lo largo de la historia. Durante la segunda mitad del siglo XX, esta terapia ha ido introduci??ndose en los pa??ses occidentales y ha obtenido una gran aceptaci??n entre los usuarios de estos pa??ses que han encontrado una medicina diferente, nada agresiva y muy preventiva, mediante la cual se obtienen resultados eficaces y r??pidamente. La Medicina Tradicional China es una medicina hol??stica ya que entiende que no existen enfermedades, sino enfermos, tiene en consideraci??n no s??lo lo que sucede en el ??rgano, sino tambi??n lo que sucede en todo el organismo, la manera de manifestarse, como responde a las influencias externas y a los est??mulos del entorno. 1

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

             <a class="next" onclick="grafica1()"><img src="./py/gr??fico-de-barras-3.jpg" height="150px"></a>

            <div id='graph'></div>





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
                    La tuberculosis es causada por bacterias que se contagian de persona a persona a trav??s de gotitas microsc??picas diseminadas en el aire. Esto puede suceder cuando una persona con la forma activa de la tuberculosis no tratada tose, habla, estornuda, escupe, se r??e, o canta.

                    Aunque la tuberculosis es contagiosa, no es f??cil contraerla. Es mucho m??s probable que te contagies de tuberculosis de una persona con quien vives o trabajas que de un desconocido. La mayor??a de la gente con tuberculosis activa, que se ha hecho un tratamiento apropiado con medicamentos por al menos dos semanas, ya no es contagiosa.
                    
                       
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Si bien tu cuerpo puede hospedar la bacteria que causa la tuberculosis (TB), tu sistema inmunitario generalmente evita que te enfermes. Por esta raz??n, los m??dicos distinguen entre:
                    La tuberculosis latente. Cuando tienes esta afecci??n, est??s infectado de tuberculosis, pero la bacteria permanece en tu organismo en estado inactivo y no presentas s??ntomas. La tuberculosis latente, tambi??n llamada tuberculosis inactiva o infecci??n con tuberculosis, no es contagiosa. Se puede convertir en tuberculosis activa, por lo que el tratamiento es importante para la persona con tuberculosis latente y para ayudar a evitar el contagio. Aproximadamente 2 mil millones de personas tienen tuberculosis latente.
                    La tuberculosis activa. Esta afecci??n te enferma y, en la mayor??a de los casos, es contagiosa. Puede ocurrir en las primeras semanas despu??s de la infecci??n con la bacteria de la tuberculosis, o puede ocurrir a??os despu??s.
                    Los signos y s??ntomas de la tuberculosis activa incluyen:

                    Tos que dura tres semanas o m??s
                    Tos con sangre
                    Dolor en el pecho o dolor al respirar o toser
                    P??rdida de peso involuntaria
                    Fatiga
                    Fiebre
                    Sudoraciones nocturnas
                    Escalofr??os
                    P??rdida de apetito
                    La tuberculosis tambi??n puede afectar otras partes del cuerpo, incluidos los ri??ones, la columna vertebral o el cerebro. Cuando la tuberculosis se produce fuera de los pulmones, los signos y s??ntomas var??an seg??n los ??rganos involucrados. Por ejemplo, la tuberculosis de la columna vertebral puede provocar dolor de espalda y la tuberculosis en los ri??ones puede causar presencia de sangre en la orina.</p>
                <br>
                <h2>Trataminto</h2>
                <br>
                <p>
                    Si tus resultados para infecci??n latente de tuberculosis son positivos, tu doctor quiz??s te indique que tomes medicamentos para reducir tu riesgo de que se convierta en tuberculosis activa. El ??nico tipo de tuberculosis que es contagiosa es la activa, cuando afecta los pulmones. As?? que si puedes evitar que la tuberculosis latente se vuelva activa, no se la contagiar??s a nadie m??s.   
                </p>
                <br>
                <img src="https://laverdadonline.com/wp-content/uploads/2018/11/epoc.jpg" height="100px" alt="">
                <img src="https://www.avancesenrespiratorio.com/arxius/imatgesbutlleti/Foto1_Patologia_EPOC_v2.png" height="100px" alt="">
                <img src="https://media.istockphoto.com/vectors/chronic-obstructive-pulmonary-disease-or-copd-lung-have-breathing-vector-id1249098906?s=612x612" height="100px" alt="">
            </section>
            <section class="l" id="enfe3">
                <h2>virus de la influenza aviar A(H7N9)</h2>
                
                <p> 
                    Los casos de infecciones en humanos por el virus de la influenza aviar A(H7N9) de linaje asi??tico ("virus H7N9 de origen asi??tico") se reportaron por primera vez en China en marzo del 2013. Desde entonces, se han reportado epidemias anuales de infecciones espor??dicas en humanos por los virus H7N9 de origen asi??tico en China. China est?? actualmente atravesando su 6?? epidemia de infecciones por el virus H7N9 de origen asi??tico en humanos.   
                    Desde la primera hasta la quinta epidemia, alrededor del 39 por ciento de las personas con infecci??n confirmada por el virus H7N9 de origen asi??tico ha muerto.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        La mayor??a de las infecciones en los seres humanos por los virus de la influenza aviar, incluidos los virus H7N9 de origen asi??tico, se ha producido por estar expuestos a aves de corral infectadas o ambientes contaminados. Los virus H7N9 de origen asi??tico siguen circulando en aves de corral en China. La mayor??a de los pacientes con infecci??n por el virus H7N9 ten??an enfermedades respiratorias graves (p. ej., neumon??a). En China se registraron pocos casos de propagaci??n limitada de persona a persona con este virus pero no hay pruebas que demuestren una propagaci??n sostenida entre personas. Algunos casos de infecciones en humanos por el virus H7N9 de origen asi??tico se han reportado fuera de China, Hong Kong o Macao pero todas estas infecciones ocurrieron entre personas que viajaron a China antes de enfermarse. Dentro de los Estados Unidos, no se detectaron los virus H7N9 de origen asi??tico en personas ni en aves.
                    </p>
                    <br>
                    <h2>Riesgos</h2>
                    <p>
                        Si bien el riesgo actual que representa el virus H7N9 de origen asi??tico para la salud p??blica es bajo, el potencial pand??mico de este virus es preocupante. Los virus de la influenza cambian constantemente y es posible que este virus adquiera la capacidad de propagarse f??cilmente y de manera sostenida entre las personas, desencadenando un brote mundial de la enfermedad (p. ej., una pandemia). De hecho, de los virus de la nueva influenza A que son de especial preocupaci??n para la salud p??blica, el H7N9 de linaje asi??tico est?? clasificado por la  Herramienta de evaluaci??n del riesgo de influenza por tener el mayor potencial de causar una pandemia as?? como tambi??n presenta un mayor riesgo de causar un posible impacto grave en la salud p??blica si el virus produjera una transmisi??n sostenida entre personas
                    </p>
                    <br>
                    <h2>Prevenciones</h2>
                    <p>
                        Los CDC est??n siguiendo de cerca esta situaci??n del virus H7N9 de origen asi??tico y trabajan conjuntamente con socios nacionales e internacionales. Los CDC toman medidas de preparaci??n de rutina para contrarrestar una pandemia a medida que son identificadas, tales como el desarrollo de virus candidatos para la vacuna (CVV, por sus siglas en ingl??s) para usar en la producci??n de una vacuna en caso de que fuera necesario. Los CDC han preparado una evaluaci??n de riesgo del virus H7N9 de origen asi??tico. Otras actividades de preparaci??n de rutina incluyen la revisi??n de los nuevos virus y secuencias de virus para evaluar sus propiedades gen??ticas y antig??nicas adem??s de su susceptibilidad antiviral. Esta informaci??n comunica acerca del proceso de evaluaci??n de riesgos actual, que determina las medidas que deber??n tomarse. Los CDC tambi??n publicaron directrices para m??dicos y autoridades de salud p??blica en los Estados Unidos, y adem??s brindaron informaci??n para personas que viajan a China. Los CDC brindar??n informaci??n actualizada a medida que est?? disponible. 
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
                    El reservorio son los gatos, perros, ratas, cerdos, caracoles (Bythnia, Alocinma, Semisulcospira). El veh??culo de transmisi??n son los pescados de agua dulce y ocasionalmente cigalas o cangrejos de r??o. La infecci??n se produce al ingerir pescados de agua dulce, crudos, secos, en salaz??n o escabeche cuya carne contiene larvas enquistadas. La larva queda libre en el duodeno, penetra en el ??rbol biliar y emigra a los conductos biliares secundarios, donde al cabo de un mes se convierte en gusano adulto. Los huevos son eliminados por las heces, el caracol ingiere los miracidios de las heces que eclosionan en el intestino, penetran en tejido, se desarrolla la larva que sale al agua donde es ingerida por los peces de agua dulce completando el ciclo que dura aproximadamente 3 meses. Los individuos infectados pueden expulsar huevos hasta 30 a??os despu??s. 
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Presenta sintomatolog??a biliar como colangitis u obstrucci??n biliar con crisis de colangitis y eosinofilia asociada con fiebre, escalofr??os, hepatomegalia dolorosa, ictericia leve. Asociaci??n elevada con colangiocarcinoma en enfermos con infecciones graves y de larga duraci??n. Los gusanos adultos pueden afectar los conductos pancre??ticos, ocasionando una pancreatitis aguda.
                    Identificaci??n de los huevos en las heces o en aspirado duodenal. Ocasionalmente serolog??a.
                </p>
                <br>
                <h2>Tratamiento</h2>
                <br>
                <p> 
                    25 mg/kg /8h/1-2 d??a o 40 mg/kg en monodosis. O albendazol 10 mg/kg/7d. En los ni??os: Praziquantel 25 mg/kg/8h/1 d??a.
                </p>

                <br>
                <h2>Prevenciones</h2>
                <br>
                <p>
                    Educar en la preparaci??n de los peces de agua dulce: cocci??n, irradiaci??n o congelaci??n a -10??C durante 5 d??as. Evitar el consumo de pescado crudo o poco cocinado. Eliminaci??n sanitaria de las excretas. Control del pescado o derivados cuando provienen de zonas end??micas. No se transmite de persona a persona.  
                </p>
                
                <br><br>
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/03/Clonorchis_sinensis_2.png" height="100px" alt="">
                <img src="https://image.slidesharecdn.com/paragonimusmexicanus-130519193521-phpapp01/95/paragonimus-mexicanus-7-638.jpg?cb=1368993974" height="100px" alt="">
                <img src="https://digestivesystemsxavier.weebly.com/uploads/1/9/2/4/19246545/3510191_orig.jpg" height="100px" alt="">
                
            </section>
            <section class="l" id="enfe5">   
                <h2>C??lera</h2>
                <br>
                <p>
                    Enfermedad diarreica aguda que puede ocasionar una deshidrataci??n severa y llevar a la muerte en pocas horas si no se trata r??pidamente. El agente responsable del proceso infeccioso es Vibrio cholerae, bacilo gramnegativo no esporulado y m??vil gracias a flagelos de disposici??n polar. En las ??reas end??micas, V. choleraese encuentra en las aguas de superficie, en las aguas saladas de estuarios y bah??as, y en diversos alimentos marinos como mejillones, berberechos, cangrejos y pescado.
                    La virulencia de V. cholerae se debe a una potente toxina que produce una diarrea secretoria masiva. La toxina estimula el AMP c??clico inhibiendo el sistema de transporte de absorci??n en las c??lulas con vellosidades, y activa el sistema de transporte por la excreci??n del cloruro localizado en las c??lulas de las criptas intestinales. En consecuencia, se origina la acumulaci??n de cloruro s??dico en la luz del intestino. Para mantener la osmolalidad del intestino, se produce una secreci??n excesiva de agua hacia la luz, que acaba originando la diarrea acuosa con perdidas de hasta un litro de agua y electrolitos en una hora.  
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        El microorganismo est?? ampliamente disperso en las riberas de r??os asi??ticos, africanos y americanos, pantanos y aguas de costas. La principal v??a de transmisi??n es la ingesti??n de agua o alimentos contaminados con la bacteria. Los factores de virulencia protegen al organismo y le permiten adherirse a la mucosa intestinal. De las ocho pandemias descritas deste 1827, el serogrupo O:1 de V. cholerae ha estado implicado en siete. El serogrupo O:1 tiene dos biotipos: cl??sico y El Tor. Este ??ltimo biotipo estuvo implicado en la s??ptima pandemia en 1961, originada en Indonesia y que se mantuvo activa durante cuatro d??cadas. La octava pandemia fue debida al serogrupo O:139, y fue controlada en 1993, el a??o en que se desat??.

                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <p>
                        Tras un per??odo de incubaci??n de 24 a 48 horas, se produce una diarrea acuosa de comienzo brusco, seguida de v??mitos. En las formas graves los adultos pueden sufrir p??rdidas de un litro por hora. De no reponerse estas p??rdidas de inmediato las consecuencias son letales. Se produce fiebre, calambres musculares, debido a la depleci??n de potasio, hipotensi??n postural, deshidrataci??n, acidosis metab??lica, insuficiencia renal, debilidad, taquicardia, pulso d??bil y somnolencia, que se agrava hasta el coma cuando hay una considerable p??rdida de masa corporal.

                    </p>
                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        Lo m??s importante es la restituci??n inmediata de agua y electrolitos, tanto por v??a oral como intravenosa. Los antibi??ticos no son indispensables en el tratamiento. El f??rmaco de elecci??n es doxiciclina que abrevia el tiempo de recuperaci??n de la enfermedad. Ciprofloxacino, ampicilina o cotrimoxazol son las principales alternativas.    
                    </p>
                    <br>
                    <h2>Prevencion</h2>
                    <br>
                    <p>
                        El control y la prevenci??n dependen de la higiene del agua. No hay propagaci??n de una persona a otra. El incremento de las medidas de higiene en las ??reas end??micas es muy importante para la prevenci??n del c??lera, y el control de la enfermedad en las ??reas end??micas. Estas medidas incluyen la filtraci??n y cloraci??n de los sistemas de agua, as?? como la educaci??n sanitaria p??blica. La vacuna del c??lera con microorganismos muertos tiene un valor limitado, ya que confiere una protecci??n parcial (al 50% de las personas vacunadas) de duraci??n breve (3-6 meses). En la actualidad la recomendaci??n a las personas que viajan a las zonas end??micas es limitado.  
                    </p>
                    <br>
                 
            </section>
            <section class="l" id="enfe6">
                <h2>Kawasaki</h2>
                <br>
                <p>
                    La enfermedad de Kawasaki causa hinchaz??n (inflamaci??n) en las paredes de las arterias medianas de todo el cuerpo. Afecta principalmente a los ni??os. La inflamaci??n tiende a afectar las arterias coronarias, que suministran sangre al m??sculo card??aco.

                    La enfermedad de Kawasaki algunas veces se denomina s??ndrome de los ganglios linf??ticos mucocut??neos porque tambi??n afecta los ganglios que se hinchan durante una infecci??n (ganglios linf??ticos), la piel y las membranas mucosas dentro de la boca, la nariz y la garganta.
                    
                    Los signos de la enfermedad de Kawasaki, como fiebre alta y descamaci??n de la piel, pueden ser atemorizantes. La buena noticia es que la enfermedad de Kawasaki suele ser tratable y la mayor??a de los ni??os se recuperan de ella sin problemas graves.   
                </p>  
                <br>
                <h2>Causas</h2>
                <br>
                <p>
                    Nadie sabe qu?? causa la enfermedad de Kawasaki, pero los cient??ficos no creen que la enfermedad sea contagiosa de persona a persona. Varias teor??as relacionan la enfermedad con bacterias, virus u otros factores ambientales, pero ninguna ha sido probada. Ciertos genes pueden hacer que tu hijo tenga mayor probabilidad de contraer la enfermedad de Kawasaki.   
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Los signos y s??ntomas de la enfermedad de Kawasaki generalmente aparecen en tres fases.

                    Primera etapa
                    Los signos y s??ntomas de la primera fase pueden incluir:
                    
                    Fiebre que con frecuencia es superior a 102,2 ??F (39 ??C) y dura m??s de tres d??as
                    Ojos extremadamente rojos sin una secreci??n espesa
                    Erupci??n en la parte principal del cuerpo y en la zona genital
                    Labios rojos, secos y agrietados y lengua extremadamente roja e hinchada
                    Piel roja e hinchada en las palmas de las manos y en las plantas de los pies
                    Ganglios linf??ticos inflamados en el cuello y tal vez en otra parte
                    Irritabilidad
                    Segunda etapa
                    En la segunda fase de la enfermedad, tu hijo puede presentar:
                    
                    Descamaci??n de la piel de las manos y de los pies, sobre todo en las puntas de los dedos, a menudo, en forma de l??minas grandes
                    Dolor articular
                    Diarrea
                    V??mitos
                    Dolor abdominal
                    Tercera etapa
                    En la tercera fase de la enfermedad, los signos y s??ntomas desaparecen lentamente, a menos que se manifiesten complicaciones. Es posible que transcurran hasta ocho semanas antes de que los niveles de energ??a parezcan normales de nuevo. </p>
                <br>
                <h2>Trataminto</h2>
                <br>
                <p>
                    La enfermedad de Kawasaki generalmente se trata en el hospital con una dosis intravenosa de inmunoglobulina. La aspirina tambi??n puede ser parte del tratamiento. Pero no le d?? aspirina a su hijo a menos que el profesional de la salud se lo indique. La aspirina puede causar s??ndrome de Reye en ni??os. Esta es una enfermedad rara y grave que puede afectar el cerebro y el h??gado.

                    En general, el tratamiento funciona. Pero si no funciona lo suficientemente bien, el proveedor tambi??n puede darle a su hijo otros medicamentos para combatir la inflamaci??n. Si la enfermedad afecta el coraz??n de su hijo, podr??a necesitar medicamentos adicionales, cirug??a u otros procedimientos m??dicos.</p>
                
                <img src="https://www.healthychildren.org/SiteCollectionImagesArticleImages/Signs_Symptoms_Kawasaki_Disease_es.jpg" height="100px" alt="">
                <img src="http://www.cienciacierta.uadec.mx/wp-content/uploads/2019/11/1portada.jpg" height="100px" alt="">
                <img src="https://vivirenelpoblado.com/wp-content/uploads/2020/05/Gr??fico-Enfermedad-de-Kawasaki-500x500.jpg" height="100px" alt="">
           </section> 
           


    </article>







<script src="./js/index.js"></script>
</body>
</html>