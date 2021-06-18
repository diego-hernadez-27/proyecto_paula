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
<link rel="stylesheet" href="./css/CoreaS.css">
<script src="./js/instrucciones.js" type="text/javascript"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script> 
<script src='./py/morris.min.js'></script>
<script>    

function grafica1(){
  new Morris.Bar({
  element: 'graph',
  data: [{x:'Diarrea de Viajero 30%', y:40 , z:1, } ,
{x:'Cancer 20%', y:30, z:2},
{x:'Hepatitis A 20%', y:30, z:3},
{x:'Fiebre severa  20%', y:20, z:4},
{x:"Pickttsiosis 10%", y:20, z:5},
{x:'Malaria 10% ', y:10, z:6},
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
      <a href="#" class="logo">MedicalAssist</a>
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
                <H1>Corea del sur </H1>
                <br>
                <h4>Las enfermedades en Corea del sur asi como su salud.</h4>
                <br>
                <p>
                    En comparación con otros países de la OCDE, la tasa de suicidios femenina en Corea del Sur es la más alta, con 15.0 muertes por suicidio por cada 100.000 muertes de acuerdo a la tasa de suicidio, mientras que la masculina es la tercera más alta con 32.5 muertes por cada 100.000.
                    pero hay hablaremos de sus enfermedades mas comunes ya que el suicidio no es una enfermedad   
                </p>
                <img src="./img/corea.jpg" height="100px" alt="">
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
                    <a href="#enfe1" onclick="mostrar('enfe1')"><img src="./img/diarrea-del-viajero-fundacion-io-1024x1024.png" class="p" ></a>
                    <a href="#enfe2" onclick="mostrar('enfe2')"><img src="./img/can.jpg" class="p"></a>
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="./img/Hepatitis-A-1024x1024.png" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="./img/FSST-Fiebre-Severa-con-Sindrome-de-Trombocitopenia-fundacionio-1024x1024.png" class="p"></a>
                    <a href="#enfe5" onclick="mostrar('enfe5')"><img src="./img/balamuthia-fundacion-io-1024x1024.png" class="p"></a>
                    <a href="#enfe6" onclick="mostrar('enfe6')"><img src="./img/malaria-fundacion-io-1024x1024.png" class="p"></a>
                    
                    
                
            </section>

            <section class="l" id="enfe1">
                <h2>Diarrea del viajero</h2>
                <br>
                <p>
                    La diarrea del viajero se define como la emisión heces sueltas tres o más veces al día. Es la complicación más frecuente de los viajes y su incidencia varía en función de muchas variables: edad, lugar de destino, estación del año, tipo de residencia, origen del viajero y, por supuesto, la dieta durante el viaje.
                    Algunos autores han detectado la presencia de diarrea en más de la mitad de los viajeros a países en vías de desarrollo. La frecuencia depende del grado de pobreza del destino: a mayor pobreza, mayor incidencia de diarrea del viajero.    
                </p>
                <br>
                <h2>Síntomas</h2>
                <br>
                <p>
                    Los síntomas de la diarrea del viajero son la presencia de deposiciones líquidas o pastosas, generalmente sin moco, pus ni sangre, que suelen ir acompañadas de dolor abdominal tipo retortijón, debilidad, fiebre (10-30 %), nauseas (40-60 %) y vómitos (10-70%).
                    La diarrea puede aparecer en cualquier momento durante el viaje o, en viajes más cortos, a la vuelta del mismo.
                    Hay un pequeño porcentaje de viajeros (15%) que padecen diarrea con sangre –disentería– cuyo origen se debe a infecciones invasoras de la pared intestinal: shigellosis, fiebre tifoidea, Campylobacter, etcétera. Estos casos se suelen acompañar de síntomas generales más acusados, como fiebre alta, escalofríos, sudación profusa e intensa debilidad.   
                    Hay un grupo de pacientes que padecen durante y después del viaje un síndrome de diarrea crónica, consistente en la emisión de heces sueltas, en muchos casos de forma intermitente, acompañado de debilidad, flatulencia, a veces febrícula y cierta pérdida de peso. En muchos de estos pacientes los estudios microbiológicos son negativos y, habiendo descartado la existencia de otras enfermedades inflamatorias intestinales (Enfermedad de Chron, colitis ulcerosa, colitis microscópica), requieren un tratamiento empírico antimicrobiano y antiparasitario.
                </p>
                <br>
                <h2>Causas</h2>
                <br>
                <p>
                    La causa más frecuente de la diarrea del viajero son las infecciones bacterianas, seguidas por las infecciones víricas y parasitarias.
                    E. coli enterotoxigénica es la bacteria más frecuentemente implicada en casi todas las áreas geográficas.
                    Campylobacter jejuni es más frecuente durante los meses de invierno en zonas de Asia, Mexico y norte de África; en ocasiones esta infección se ha asociado al síndrome de Guillain-Barré.
                    El consumo de pescado de agua dulce troceado en zonas del sudeste asiático se ha asociado con la infección por una bacteria conocida como Laribacter hongkongensis que provoca un cuadro diarreico con dolor abdominal, vómitos, cefalea y mialgias.
                    Las infecciones víricas y parasitarias son causas infrecuentes de diarrea en el viajero, pero se han descrito brotes epidémicos por virus en cruceros (norovirus).
                </p>
                <br>
                <h2>Prevención</h2>
                <br>
                <p>
                    Las medidas más eficaces para prevenir la diarrea del viajero son:
                    Cuidado con la alimentación y las bebidas.
                    Empleo de antimicrobianos de forma profiláctica.
                    Empleo de antidiarreicos de forma profiláctica.
                    De estos tres, es la primera medida en la que se debe hacer mayor hincapié. Los alimentos con mayor riesgo de contaminación son los adquiridos en la calle en puestos de venta ambulante y los más seguros son los cocinados por uno mismo.
                </p>
                <br>
                <h2>Tratamiento</h2>
                <br>
                <p>
                    La diarrea del viajero, aunque muy molesta e inconveniente, suele ser autolimitada y desaparece en 4-7 días en la mayoría de los casos. Sin embargo, se puede acortar su duración realizando un tratamiento adecuado.
                    Reponer los líquidos y electrolitos perdidos
                    Dieta
                    Tratamiento sintomático
                    Tratamiento antimicrobiano
                    Es fundamental recordar que durante los episodios de diarrea hay hacer una dieta blanda, pero hay que nutrirse e hidratarse. Se pueden emplear las sales de rehidratación oral, pero también son eficaces las preparadas por uno mismo (Fórmula para la rehidratación: Añadir a un litro de agua hervida una cucharadita de sal, cuatro cucharadas de azúcar, una cucharada de bicarbonato, si se desea un limón exprimido para dar sabor) o los caldos de arroz cocido que se deben beber a demanda con el objetivo de no tener sed y un flujo de orina normal. Además de tomar los líquidos hay que ingerir calorías en forma de hidratos de carbono (pan, galletas, etcétera) preferiblemente.
                </p>
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
                <h2>Hepatitis A</h2>
                
                <p> 
                    La hepatitis A es una infección viral con amplia distribución en el mundo, particularmente en las zonas menos desarrolladas. La infección se adquiere por vía oral y cursa de forma asintomática en niños, sin embargo en la población adulta puede ser muy grave.
                    La hepatitis A se produce por la infección con el virus de la hepatitis A que pertenece a la familia de los picornavirus, género hepatovirus. Tiene un tamaño de 27-28 nm, forma icosaédrica y su genoma está constituido por una cadena sencilla de RNA.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        El principal mecanismo de transmisión de la infección es por la vía oral, aunque también puede adquirirse por vía sanguínea si se transfunde sangre o derivados de pacientes con viremia por VHA, aunque esta situación es muy infrecuente.
                        Distribución mundial de anticuerpos frente a la hepatitis A
                        Los pacientes infectados por el VHA eliminan los virus en las heces durante un periodo de tiempo variable pero que puede ser aproximadamente de 2 a 4 semanas. El contagio se produce tras la ingesta de partículas virales en alimentos, bebidas, objetos contaminados, etc. De ello se desprende que las poblaciones de riesgo son:
                        1) Familiares o personas que conviven con sujetos infectados
                        2) Niños que van a guarderías o personas en instituciones cerradas (residencias, cuarteles, etcétera)
                        3) Personas que mantienen relaciones sexuales orales
                        4) Ingesta de alimentos o agua contaminados (principalmente en viajeros a zonas endémicas) 
                    </p>
                    <br>
                    <h2>Riesgos</h2>
                    <p>
                        El periodo de incubación oscila entre 15 y 50 días. La infección, cuando se adquiere durante la infancia suele cursar de forma asintomática (95 %), de tal forma que en las zonas endémicas la mayor parte de los jóvenes han estado en contacto con el virus sin haberlo sabido. Sin embargo a medida que aumenta la edad la infección cursa de forma sintomática en mayor proporción.
                        Hay una fase inicial caracterizada por astenia, debilidad, inapetencia, dolores musculares, nauseas, vómitos, dolorimiento abdominal, fiebre, cefalea, mialgias, etc. Al cabo de 7 a 14 días sobreviene el cuadro clínico ictérico, con coluria, anorexia importante y desaparición espontánea del síndrome febril. Es frecuente detectar hepatomegalia dolorosa y esplenomegalia en algunos casos. Habitualmente el cuadro ictérico dura 2 semanas y desaparece sin secuelas.
                        En un pequeño porcentaje de pacientes (1%) la enfermedad cursa en forma de hepatitis fulminante, con fracaso hepático agudo, encefalopatía, decompensación hidrópica, trastornos de la coagulación, etc. requiriendo excepcionalmente un transplante hepático.  
                        La enfermedad puede ser severa en pacientes con hepatopatía crónica previa, bien de origen viral o de otra etiología. Otras formas infrecuentes se caracterizan por tener colestasis prolongada o ser recurrentes.
                    
                    </p>
                    <br>
                    <h2>Diagnostico</h2>
                    <p>
                        El diagnóstico clínico se confirma generalmente con la determinación de anticuerpos del tipo IgM en el suero del paciente con infección aguda. Posteriormente se positivizan también los de tipo IgG, que seguirán elevados de por vida.
                        Los estudios analíticos elementales mostrarán elevación de transaminasas (más de 10 veces los valores normales) y bilirrubina.
                        En las heces se puede demostrar la presencia de virus, sin embargo no es una prueba de uso diagnóstico. 
                    </p>
                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        El tratamiento de la hepatitis A es sintomático, de tal forma que tan sólo los pacientes que presenten vómitos constantes o signos de fracaso hepático deben ser ingresados para recibir sueroterapia y aporte nutritivo y vitamínico. No hay ningún fármaco antiviral conocido que disminuya la morbilidad de esta enfermedad, que, por otra parte, cursa habitualmente sin complicaciones.
                    </p>
                    <br>
                    
                    <img src="https://cdn.aarp.net/content/dam/aarp/health/drugs_supplements/2020/10/1140-hepatitis-a-esp.imgcache.rev.web.600.345.jpg" height="100px">
                    <img src="https://mejorconsalud.as.com/wp-content/uploads/2017/11/Hepatitis-A-500x286.jpg" height="100px">
                    <img src="https://static1.bigstockphoto.com/6/6/7/large1500/76675940.jpg" height="100px">
            </section>
            <section class="l" id="enfe4">
                <h2>Fiebre severa con sindrome de trombocitopenia (fsst)</h2>
                <br>
                <p>
                    Es una enfermedad infecciosa transmitida por garrapatas, con una alta tasa de letalidad causada por un Bunyavirus, (virus FSST -FSSTV-).
                    La enfermedad es endémica en China (ha sido reportada en 11 provincias), Corea del Sur y Japón; sin embargo, podría extenderse a otros países de Asia y el mundo, especialmente donde estén presentes las garrapatas.
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    La infección consta de cuatro fases: incubación, etapa febril, fallo multiorgánico y convalecencia.
                    El periodo de incubación dura entre 5-14 días.
                    En la fase febril, que dura de 5 a 11 días, se presenta cefalea, mialgia, trombocitopenia, leucopenia.
                    La fase de fallo multiorgánico se caracteriza por la afectación cardíaca, del hígado, pulmones y riñones, dura entre 7-14 días.
                    La fase de convalecencia aparece a los 11-19 días, y es cuando se empiezan a resolver los síntomas. 
                </p>
                <br>
                <h2>Tratamiento</h2>
                <br>
                <p> 
                    No hay tratamiento específico ni vacuna.
                    La ribavirina no ha mostrado ser eficaz.
                </p>

                <br>
                <h2>Prevenciones</h2>
                <br>
                <p>
                    Se recomiendan medidas para evitar la picadura por garrapatas.
                    En 2018, la Organización Mundial de la Salud (OMS) la incluyó en su lista de patógenos prioritarios, que tienen el potencial de causar una emergencia de salud pública, dado que no hay o son insuficientes las contramedidas, como tratamientos y vacunas que ayudan a controlar los brotes.
                    Tiene potencial para causar una emergencia de salud pública y por tanto debe vigilarse cuidadosamente y reaizar los esfuerzos de investigación para comprenderla mejor. 
                </p>
               
                <br><br>
                <img src="https://s.yimg.com/ny/api/res/1.2/pp71R3rv6SV.oJQmKyrZSw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTU0MDtjZj13ZWJw/https://media.zenfs.com/es-ar/iprofesional_650/81926fd536f7090b1632aa093a31670f" height="150px" alt="">
                <img src="https://reporterourbanobcs.com/wp-content/uploads/2020/08/f800x450-199473_250919_15-768x431.jpg " height="150px" alt="">
               
            </section>
            <section class="l" id="enfe5">   
                <h2>Rickettsiosis</h2>
                <br>
                <p>
                    Características
                    Cocobacilo de pequeño tamaño y crecimiento intracelular obligado.
                    
                     
                    Reservorio
                    Diversos animales, garrapatas y ácaros.
                    
                     
                    Mecanismo de transmisión
                    R. akari, R. rickettsii: garrapatas y ácaros. R. felis: pulga del gato y perro. Otras especies: garrapatas.
                    
                     
                    Período de incubación
                    2-14 días.  
                </p>
                    <br>
                    
                    <h2>Sintomas</h2>
                    <p>
                        Fiebres manchadas. Fiebre manchada de las Montañas Rocosas (R. rickettsii). Rickettsiosis exantemática o pustulosa (R. akari). Pericarditis, miocarditis aguda o crónica. Linfadenopatía por picadura de garrapata (TIBOLA) -Tick-borne lymphadenopathy, el cuadro también se conoce como dermacentor-borne necrosis eritema lymphadenopathy (DEBONEL) y scalp eschar and neck lymphadenopathy after tick bite (SENLAT) – (R. slovaca, R. raoulttii y «R. rioja», R. sibirica subsp mongolitimonae y R. massiliae). Linfangitis asociada a rickettsiosis (R. sibirica subsp mongolitimonae).   
                    </p>
                    <br>
                    <h2>Diagnostico</h2>
                    <br>
                    <p>
                        Serología. Detección genómica (secuenciación, técnicas de biología molecular -PCR- RCP o PLFR).
                    </p>
                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        Doxiciclina 100 mg/12 h oral, 7 días. Alternativas: Cloranfenicol 50-75 mg/kg/día, 7 días; josamicina, rifampicina o ciprofloxacino.
                        Pertenecen a las rickettsias del grupo de las fiebres manchadas salvo R. felis, R. akari y R. australis, para las que se ha propuesto el grupo de transición.
                        R. tsutsugamushi actualmente se denomina Orientia tsutsugamushi. R. australis y R. sibirica producen fiebres maculosas en Australia y Siberia, respectivamente. R. akari produce una fiebre maculosa con erupción varioliforme. R. felis causa la rickettsiosis californiana (produce un cuadro que remeda al tifus murino y el dengue). R. japonica, R. honei y R. africae causan fiebres manchadas en Japón, las islas Flinders y África, respectivamente. R. tarasevichiae se ha detectado en el centro y este de China en cerca del 10% de pacientes hospitalizados por sospecha de SFTS (Severe Fever with Trhombocytopenia Syndrome).
                    </p>
                    <br>
                    
                    <img src="https://www.clikisalud.net/wp-content/uploads/2016/09/rickettsiosis.jpg" height="100px" alt="">
                    <img src="https://imagenes.milenio.com/7Qx3Nh_xW6n62W-vJQTHceXcB0U=/958x596/https://www.milenio.com/uploads/media/2017/12/20/no-todas-las-garrapatas-piojos.jpeg" height="100px" alt="">
                    <img src="https://www.ecured.cu/images/9/9d/Rickettsiosis2.jpg" height="100px" alt="">
            </section>
            <section class="l" id="enfe6">
                <h2>Malaria</h2>
                <br>
                <p>
                    La malaria o paludismo es la infección tropical de mayor importancia médica, tanto por su elevada prevalencia como por su tasa de mortalidad.
                    Se estima que un 40% de la población mundial habita en zonas con riesgo de malaria, localizadas en áreas tropicales y subtropicales del planeta.

 

Cada año puede haber entre 300 y 500 millones de casos de malaria en la población expuesta. De entre ellos, se estima que 1,5 a 3 millones de personas fallecen por esta infección. El 90% de los casos mortales ocurren en el continente africano.

 

Pese a que a lo largo del siglo XX se pensó que la malaria podría controlarse mediante el empleo de insecticidas y fármacos antipalúdicos, lo cierto es que a comienzos del siglo XXI observamos que la infección está emergiendo de nuevo en algunas zonas y, lo que es más grave, el parásito se muestra cada vez más resistente a los medicamentos antipalúdicos y las zonas de multiresistencia se están ampliando.
                </p>  
                <br>
                <h2>Causas</h2>
                <br>
                <p>
                    La infección se adquiere a través de la picadura de mosquitos del género Anopheles y provoca un síndrome febril agudo de varios días de duración y, según las diferentes especies que lo originan, pueden aparecer complicaciones. En la infección por P. falciparum, la más frecuente y grave, puede haber afectación del sistema nervioso central, insuficiencia renal, distres respiratorio, etcétera.
                </p>
                <br>
            
                <h2>Prevencion</h2>
                <br>
                <p>
                    La prevención de la infección se realiza desde varios frentes, como son el control del vector, el empleo de telas mosquiteras impregnadas con permetrina para evitar las picaduras, el empleo de fármacos con actividad antipalúdica administrados de forma periódica a las poblaciones más susceptibles de fallecer por la infección, el tratamiento precoz de los casos agudos. Aún no se dispone de una vacuna eficaz contra la enfermedad.
                </p>
                <br>
                <img src="https://www.ecestaticos.com/image/clipping/996/747/7dbc3e87408a5515c75b02b4f27d4d62/cura-de-la-malaria-hallan-un-compuesto-que-detiene-el-crecimiento-del-parasito.jpg" height="100px" alt="">
                <img src="https://www.mayoclinic.org/-/media/kcms/gbs/patient-consumer/images/2013/08/26/10/13/ds00475_im00175_mcdc7_malaria_transmitthu_jpg.jpg" height="100px" alt="">
                <img src="https://invdes.com.mx/wp-content/uploads/2018/05/12-05-18-malaria.jpg" height="100px" alt="">
           </section> 
           


    </article>









<script src="./js/index.js"></script>
</body>
</html>