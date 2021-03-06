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
<link rel="stylesheet" href="./css/Canada.css">
<script src="./js/instrucciones.js" type="text/javascript"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script> 
<script src='./py/morris.min.js'></script>
<script>    

function grafica1(){
  new Morris.Bar({
  element: 'graph',
  data: [{x:'Tuberculosis 30%', y:40 , z:1, } ,
{x:'Cancer 20%', y:30, z:2},
{x:'Tularemia 20%', y:30, z:3},
{x:'meningitis 20%', y:20, z:4},
{x:"Legionella 10%", y:20, z:5},
{x:'Enf, Pulmonar 10% ', y:10, z:6},
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
                <H1>Canada</H1>
                <br>
                <h4>Las enfermedades en Canada asi como su salud.</h4>
                <br>
                <p>
                    No pretende en modo alguno ser exhaustivo, sino más bien aproximarse a uno de los aspectos relevantes del sistema: su financiamiento. El objetivo central es identificar algunas de las virtudes y limitaciones de un sistema de salud que se considera de los más eficientes, efectivos y equitativos del mundo.
                    A pesar de que el gobierno federal y los gobiernos provinciales financian el sistema de salud canadiense, la contención de costos es una preocupación constante, ya que factores como el uso creciente de tecnologías de alta complejidad, la atención hospitalaria y el tratamiento prolongado de las enfermedades crónicas y degenerativas contribuyen a aumentar los costos. 
                </p>
                <img src="./img/canada.jpg" height="100px" alt="">
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
                    <a href="#enfe1" onclick="mostrar('enfe1')"><img src="./img/tubercolosis.jpg" class="p" ></a>
                    <a href="#enfe2" onclick="mostrar('enfe2')"><img src="./img/cancer.jpg" class="p"></a>
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="./img/Turalemia.png" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="./img/MeningitisMeningococica-fundacionio-1024x1024.png" class="p"></a>
                    <a href="#enfe5" onclick="mostrar('enfe5')"><img src="./img/legionella-fundacionio-1024x1024.png" class="p"></a>
                    <a href="#enfe6" onclick="mostrar('enfe6')"><img src="./img/pulmon.jpg" class="p"></a>
                    
                
            </section>

            <section class="l" id="enfe1">
                
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
                
                <img src="https://laverdadonline.com/wp-content/uploads/2018/11/epoc.jpg" height="50px" alt="">
                <img src="https://www.avancesenrespiratorio.com/arxius/imatgesbutlleti/Foto1_Patologia_EPOC_v2.png" height="50px" alt="">
             
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
                <h2>Tularemia</h2>
                
                <p> 
                    La tularemia es una zoonosis propia de lagomorfos y pequeños roedores. La enfermedad puede afectar además a las personas, animales domésticos (herbívoros y pequeños carnívoros) y otros mamíferos, aves, reptiles y anfibios.
                    F. tularensis puede infectar a muchas especies animales (mamíferos, aves, anfibios e invertebrados), pero sólo unos pocos mamíferos son realmente importantes para su ecología: fundamentalmente los lagomorfos (liebres, conejos) y los pequeños roedores (ratones de campo, topillos, ardillas, hamsters…) El ganado (ovino y bovino), pájaros, perros, gatos, zorros … también pueden infectarse. Y no hay que olvidar el papel vector de los artrópodos: pulgas, garrapatas, piojos…
  
                </p>
                    <br>
                    <h2>Transmision</h2>
                    <br>
                    <p>
                        – Cutánea: por contacto directo con el animal portador, a través de pequeñas erosiones de la piel o incluso a través de la piel sana. También por picaduras de garrapatas…

 

                        – Mucosas: bien por inhalación de polvo o ingestión de alimentos o agua contaminados.
                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <p>
                        El periodo de incubación es de 1-21 días (en la mayoría de 1 a 5). La gravedad del cuadro depende de la virulencia de la cepa y del estado inmunitario del paciente y puede variar desde los casos asintomáticos o con síntomas banales hasta un cuadro séptico grave que puede provocar la muerte.

 

                        Inicio brusco de fiebre, escalofríos, cefalea, mialgias, exantemas, artralgias, anorexia, fatiga… La enfermedad puede autolimitarse en este nivel o evolucionar hacia alguna de las seis formas clásicas de la tularemia que muchas veces se superponen y que dependen, fundamentalmente, de la vía de entrada de la bacteria en el organismo.
                        
                          
                    </p>
                    <br>
                    <h2>Prevenciones y Tratamiento</h2>
                    <p>
                        En la clasificación que los Centers for Disease Control and Prevention (CDC) realizan de los agentes infecciosos susceptibles de ser utilizados como armas biológicas colocan a Francisella tularensis (junto a Bacillus anthracis, y Yersinia pestis) dentro del grupo A: microorganismos que pueden provocar accidentes masivos dada su gran infectividad y virulencia.

 

                        Un estudio de los CDC analiza las consecuencias de un ataque biológico con F. tularensis: si se dispersara una nube de tularemia sobre una población de 100.000 habitantes habría que esperar unos 82.500 casos de enfermedad con alrededor de 6.200 muertes, ya que la mayoría de los casos serían de las formas neumónica y tifoidea, las más graves. Es decir una tasa de ataque de 82.5% con una tasa de mortalidad del 6.2%. Los norteamericanos también han calculado los costes médicos de esta acción: unos 500 millones de dólares.
                    </p>
                    
                    <br>
                    <br>
                    <img src="https://thumbs.dreamstime.com/z/tularemia-mordedura-de-la-mano-linfadenitis-y-conjuntivitis-129171033.jpg" height="100px">
                    <img src="https://www.lavanguardia.com/files/image_948_465/uploads/2019/08/22/5fa535dc65a7d.jpeg" height="100px">
                    <img src="https://static.educalingo.com/img/en/800/tularemia.jpg" height="100px">
            </section>
            <section class="l" id="enfe4">
                <h2>Meningitis meningococica</h2>
                <br>
                <p>
                    Se han identificado al menos 13 serogrupos que se dividen en inmunotipos, serotipos y subserotipos. La mayoría de casos están producidos por los serogrupos A, B, C, Y y W-135. El serogrupo A es endémico en África subsahariana. El resto origina casos esporádicos o pequeños brotes por todo el mundo. Los programas de vacunación frente al serogrupo C han reducido significativamente su incidencia. 
                    Humano. Coloniza la nasofaringe (raramente puede colonizar la uretra y el recto). La colonización es más frecuente en fumadores (activos o pasivos), en el curso de infecciones víricas de vías aéreas superiores, en invierno y en varones homosexuales. Puede durar meses y suele conducir al desarrollo de inmunidad.
                </p>
                <br>
                <h2>Transmision</h2>
                <br>
                <p>
                    Transmisión por gotas a distancia menor de un metro y convivencia prolongada (> 8 h) o exposición directa a secreciones orofaríngeas a través de besos, respiración boca a boca o maniobras de intubación traqueal.

                    Es una Enfermedad de declaración obligatoria (EDO) urgente. Requiere precauciones de aislamiento tipo gotas.
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p> 
                    Enfermedad febril no localizada. Bacteriemia (meningococemia) con fiebre, a veces precedida o acompañada de faringitis, aparición de exantema purpúrico (En un 5% de casos el exantema inicial puede ser de tipo macular o máculopapular), generalmente petequial y, con menor frecuencia, equimótico, de predominio en partes acras y con posible evolución a la necrosis isquémica.

 

                    Las formas graves cursan con shock séptico, CID, fracaso multiorgánico, hemorragia suprarrenal (síndrome de Waterhouse-Friederichsen) y muerte en cuestión de horas.
                    
                     
                    
                    En cerca del 80% de casos la meningococemia origina meningitis purulenta. Más raramente la meningitis se presenta sin signos de meningococemia.
                    
                     
                    
                    Complicaciones raras de la meningitis son el empiema subdural y las microhemorragias cerebelosas. Eventualmente la bacteriemia se autolimita y recurre semanas más tarde en una o varias ocasiones (meningococemia crónica).   
                </p>

                <br>
                <h2>Tratamiento</h2>
                <br>
                <p>
                    Ceftriaxona 50-75 mg/kg/día (máximo 4 g/día) iv repartidos en 2 tomas o cefotaxima 2 g/4 h iv, 7 días.
                    Si la cepa es sensible a penicilina G sódica puede emplearse a dosis de 300.000 U/kg/día en 6 dosis (máximo 24 MU/día) iv, 7 días.
                    El tratamiento con una cefalosporina erradica el estado de portador faríngeo, en cambio penicilina no lo modifica. La descolonización puede hacerse con rifampicina, minociclina, ciprofloxacino o azitromicina.
                </p>
                <br>
                <h2>Prevencion</h2>
                <br>
                <p>
                    Existe una vacuna polisacárida conjugada para el grupo C (también para el A) y una proteica para el B.

 

                    Aproximadamente un 30% de los meningococos aislados en España muestran resistencia intermedia a penicilina (CMI 0,1-1 mg/L) por modificación de la PBP2.
                    
                     
                    
                    En pacientes alérgicos a penicilina puede emplearse aztreonam o cloranfenicol 75-100 mg/kg/día en 4 dosis (si está disponible). N. meningitidis es muy sensible a ciprofloxacino y levofloxacino.
                    
                      
                </p>

                <img src="https://faros.hsjdbcn.org/sites/default/files/styles/ficha-contenido/public/staphylococcus_aureus_bacteria_escape.jpg?itok=fVflezAo" height="50px" alt="">
                <img src="https://blog.aegon.es/wp-content/uploads/2020/10/meningitis-que-es.jpg" height="50px" alt="">
                <img src="https://static.tuasaude.com/media/article/zm/fn/meningitis-meningococica_24877_l.jpg" height="50px" alt="">
                
            </section>
            <section class="l" id="enfe5">   
                <h2>
                    Legionella</h2>
                <br>
                <p>
                    Es un bacilo gramnegativo aerobio exigente de crecimiento intracelular facultativo (lisosomas y retículo endoplásmico de macrófagos). Dado que es difícil visualizarlo con la tinción de Gram, se suele utilizar inmunofluorescencia o tinciones de plata.
                    Las personas afectadas sufrieron de un tipo de neumonía (infección de los pulmones) que pasó a conocerse como la enfermedad de los legionarios.

 

                    Las portadas de las revistas muestran el trabajo de los profesionales de salud pública en 1976 mientras rastreaban con urgencia el origen del primer brote documentado de la enfermedad del legionario en Filadelfia, Pensilvania.   
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        Ríos, lagos, estanques, fuentes, sistemas de abastecimiento de agua, torres de refrigeración, equipos de tratamiento respiratorio, humidificadores e instalaciones recreativas climatizadas.

 

                        El mecanismo de transmisión es por la inhalación de aerosoles contaminados. Posible trasmisión de persona a persona. Tiene un período de incubación, en el caso de la enfermedad de los legionarios de 2 a 10 días, y en el caso de la fiebre de Pontiac: 5-60 h.
                        
                         
                        
                        L. pneumophila se clasifica en al menos 15 serogrupos. El 90% de los casos de la enfermedad de los legionarios están producidos por L. pneumophila fundamentalmente del serogrupo 1. En Australia y Nueva Zelanda el 30% de los casos se deben a L. longbeachae. Las infecciones por otras especies suelen darse en pacientes con circunstancias favorecedoras. La detección de antígeno en orina es positiva a partir del 3er día de enfermedad y persiste positiva durante varias semanas.    
                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <p>
                        Especialmente L. pneumophila: L. pneumophila: enfermedad de los legionarios (neumonía comunitaria y nosocomial). Fiebre de Pontiac (síndrome gripal). Es rara la legionelosis extrapulmonar por eventual diseminación hematógena con infección metastásica o primaria de cualquier localización (endocarditis, miocarditis, pericarditis, pancreatitis, peritonitis, cutánea, celulitis, artritis, entre otras). Se han descrito infecciones conjuntas por más de un tipo. En neonatos bacteriemia y/o neumonía.    
                    </p>
                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        Fiebre de Pontiac: suele curar espontáneamente. Formas leves: azitromicina 500 mg/día oral, 3-5 días o claritromicina 500 mg/12 h oral, 10 días. Formas graves, neumonía cavitada o pacientes inmunodeprimidos: fluorquinolonas (levofloxacino 500 mg/12-24 h iv o ciprofloxacino 400 mg/8- 12 h iv), 10-14 días, azitromicina 500 mg/día iv, 5-10 días o la asociación de levofloxacino con azitromicina. Alternativas: Doxiciclina 100 mg/12 h oral o iv, cotrimoxazol (TMP/SMX 160/800 mg)/8-12 h oral o iv o asociación de un macrólido con rifampicina.

 

                        Azitromicina (pero no el resto de macrólidos) y las fluorquinolonas son los únicos antibióticos que tienen actividad bactericida frente a legionella. L. maceachernii, L. micdadei, L. dumoffii, L. bozemanii, L. gormanii no pertenecen realmente al género Legionella y se denominan Tatlockia micdadei, T. maceachernii, Fluoribacter dumoffii, F. bozemanae y F. gormanii, nombres que no se han generalizado. EDO.   
                    </p>
                    
                    <img src="https://www.redaccionmedica.com/images/enfermedades/legionella.jpg" height="100px" alt="">
                    <img src="https://www.ncheurope.com/images/solutions/chemaqua/legionella-main-02.jpg" height="100px" alt="">
                    <img src="https://www.cegam.com/wp-content/uploads/2019/01/fondo-control-legionella-min-1080x675.jpg+" height="100px" alt="">
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