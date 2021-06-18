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
<link rel="stylesheet" href="./css/Alemania.css">
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
{x:'Fiebre Amarilla 20%', y:30, z:3},
{x:'Paperas 20%', y:20, z:4},
{x:"Pertusis 10%", y:20, z:5},
{x:'Tuberculosis 10% ', y:10, z:6},
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
                <H1>Alemania</H1>
                <br>
                <h4>Las enfermedades en Alemania asi como su salud.</h4>
                <br>
                <p>
                    El sistema alemán de protección del trabajador se caracteriza por una estructura dual. Consta de la protección estatal de los trabajadores (de ámbito federal y regional) y de los seguros de accidente, en régimen autónomo. El componente estatal (federal y regional) promulga leyes, ordenanzas y reglamentos a partir de comités estatales. En caso necesario y previa aprobación del gobierno federal o los gobiernos regionales, las entidades aseguradoras formulan su propia normativa de protección contra accidentes.



                    La supervisión y asesoramiento de las empresas corre a cargo de los inspectores de las autoridades estatales de supervisión (de ámbito regional) y de las entidades aseguradoras.   
                </p>
                <img src="./img/Alemania.png" height="100px" alt="">
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
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="./img/Fiebre-amarilla-fundacionio-1024x1024.png" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="./img/paperas.jpg" class="p"></a>
                    <a href="#enfe5" onclick="mostrar('enfe5')"><img src="./img/Pertusis.jpg" class="p"></a>
                    <a href="#enfe6" onclick="mostrar('enfe6')"><img src="./img/tubercolosis.jpg" class="p"></a>
                    
                
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
                    <h2>Fiebre amarilla</h2>
                    <p>Enfermedad causada
                        a) Enfermedad de tipo gripal autolimitada
                        b) Fiebre hemorrágica que puede provocar la muerte.
                        </p>
                        <br>
                        <h2>Patogenia</h2>
                        <br>
                        <p>a) El virus de la fiebre amarilla se adquiere a través de la picadura de un mosquito infectado; se multiplica en ganglios linfáticos locales con aumento concomitante de TNFalfa a los 2 días. Durante los 4 días siguientes, la viremia propaga el virus que se replica en la médula ósea, bazo, hígado y ganglios linfáticos.
                             Se desarrolla ictericia y hemorragias en superficies mucosas. <br>
                            b) Recidiva de la fiebre y hemorragias en individuos en los que no se resuelve la infección inicial. A los 7-10 días desarrollan shock, lo que provoca la muerte (50 % casos).
                            <br>
                            Inmunidad:
                            Anticuerpos neutralizantes como respuesta a la infección o a la vacunación que confieren inmunidad de por vida.    
                        </p>
                        <br>
                        <h2>Tratamiento</h2>
                        <p>
                            No existe tratamiento eficaz, siendo las medidas sintomáticas y de soporte, particularmente la rehidratación y el control de posible hipotensión. La mortalidad global es del 5% en poblaciones indígenas de regiones endémicas, aunque en los casos graves, en epidemias o entre poblaciones no indígenas, hasta el 50% de los pacientes pueden fallecer.
                             Ciertos casos resultan en insuficiencia renal aguda por lo que la diálisis es importante para el tratamiento renal. 
                             Pero hay que tomar prevenciones como:
                             a) Control del mosquito <br>
                            b) Una dosis subcutánea de vacuna de virus vivos atenuados protege un 95% <br>
                            c) Antitérmicos no AAS y rehidratación oral para aliviar los síntomas <br>
                            d) Tratamiento de soporte (directrices de la OMS) <br>
                        </p>
                        <br><br>
                        <img src="./img/descargar (1).png" height="150px">
                        <img src="./img/descargar.jpg" height="150px">
                        <img src="./img/fiebre-amarilla-brasil.jpg" height="150px">
                </section>
            <section class="l" id="enfe4">
                <h2>Paperas</h2>
                <br>
                <p>
                    Las paperas son una infección viral que afecta principalmente a las glándulas salivales que se encuentran cerca de los oídos. Las paperas pueden provocar inflamación de una de las glándulas o ambas.

                    Las paperas eran habituales en los Estados Unidos hasta que la vacuna se volvió rutinaria. Desde entonces, la cantidad de casos ha disminuido considerablemente.
                    
                    Sin embargo, los brotes de paperas todavía ocurren en los Estados Unidos y la cantidad ha aumentado lentamente en años recientes. Estos brotes afectan generalmente a las personas que no están vacunadas y se producen en contextos de contacto cercano, tales como escuelas o campus universitarios.
                    
                    Las complicaciones de las paperas, como la pérdida de la audición, son potencialmente graves, pero poco frecuentes. No hay tratamiento específico para las paperas.   
                </p>
                <br>
                <h2>Sintomas</h2>
                <br>
                <p>
                    Algunas personas infectadas con el virus de las paperas no presentan signos ni síntomas o estos son muy leves. Cuando los signos y síntomas sí se presentan, generalmente aparecen unas dos o tres semanas después de la exposición al virus.

                    El principal signo de las paperas es la inflamación de las glándulas salivales que hace que las mejillas se inflamen. Otros signos y síntomas pueden incluir:
                    
                    Dolor en las glándulas salivales inflamadas en uno o ambos lados de la cara
                    Dolor al masticar o tragar
                    Fiebre
                    Dolor de cabeza
                    Dolores musculares
                    Debilidad y fatiga
                    Pérdida de apetito    
                </p>
                <br>
                <h2>Causas</h2>
                <br>
                <p> 
                    La parotiditis es causada por un virus que se disemina fácilmente de una persona a otra a través de la saliva infectada. Si no eres inmune, puedes contraer parotiditis al inhalar las gotitas de saliva de una persona infectada que ha estornudado o tosido. También puedes contraer parotiditis al compartir utensilios o tazas con una persona que tiene la enfermedad.  
                </p>

                <br>
                <h2>Prevenciones</h2>
                <br>
                <p>
                    La mejor manera de prevenir las paperas es vacunarse contra la enfermedad. La mayoría de las personas son inmunes a las paperas una vez que han recibido todas las vacunas.

                    La vacuna contra las paperas se suele administrar como una vacunación combinada contra el sarampión, las paperas y la rubéola (SPR), que contiene la forma más segura y efectiva de cada vacuna. Se recomienda la colocación de dos dosis de la vacuna triple viral antes del ingreso de los niños al ámbito escolar. Estas vacunas deben administrarse cuando el niño tiene:
                    
                    Entre 12 y 15 meses de edad
                    Entre 4 y 6 años de edad
                    Se aconseja a los estudiantes universitarios, a los viajeros internacionales y, en particular, a los trabajadores de salud que se aseguren de tener las dos dosis de la vacuna triple viral. Una dosis única no ofrece la protección suficiente ante las paperas.
                    
                    No se recomienda habitualmente la colocación de una tercera dosis de la vacuna. Pero tu médico puede recomendarte una tercera dosis si te encuentras en una zona donde se han manifestado brotes de la enfermedad. Un estudio realizado en un campus universitario sobre un brote de paperas reciente demostró que los estudiantes que recibieron una tercera dosis de la vacuna triple viral tenían un riesgo menor de contraer la enfermedad.  
                </p>
                
              
                <img src="https://www.mayoclinic.org/-/media/kcms/gbs/patient-consumer/images/2013/11/15/17/43/ds00125_-ds00147_-ds00708_-ha00034_im02997_mcdc7_salivarythu_jpg.jpg" height="70px" alt="">
                <img src="https://www.clinicapardinas.com/uploads/post-images/1g-paperas-contagio-virus-medium.jpg" height="70px" alt="">
                <img src="https://statics-cuidateplus.marca.com/sites/default/files/styles/natural/public/glandulas-salivales.jpg?itok=ehta36Sc" height="70px" alt="">
                
            </section>
            <section class="l" id="enfe5">   
                <h2>Pertusis</h2>
                <br>
                <p>
                    Descripción general
                    La tos ferina (pertusis) es una infección de las vías respiratorias sumamente contagiosa. En muchas personas se caracteriza por una tos seca intensa seguida de sonidos agudos al inhalar que parecen chillidos.
                    
                    Antes de que se desarrollara la vacuna, la tos ferina era considerada una enfermedad de la infancia. Ahora la tos ferina afecta principalmente a los niños que no han completado el esquema de vacunación y a los adolescentes y adultos que han perdido la inmunidad.
                    
                    Las muertes asociadas a la tos ferina son muy poco frecuentes pero ocurren frecuentemente en bebés. Por eso es tan importante que las mujeres embarazadas, y otras personas que van a tener contacto directo con el bebé, se vacunen contra la tos ferina.
                </p>
                    <br>
                    <h2>Causas</h2>
                    <br>
                    <p>
                        Un tipo de bacterias, llamadas «Bordetella pertussis», provoca la tos ferina. Cuando una persona infectada tose o estornuda, diminutas gotitas llenas de gérmenes se esparcen en el aire y son inhaladas hacia los pulmones de las personas que están cerca. 
                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <p>
                        los síntomas
                        Una vez que te contagias con tos ferina, los signos y síntomas demoran unos 7 a 10 días en aparecer, aunque a veces puede ser más tiempo. Por lo general son leves al principio y se parecen a los del resfriado común:
                        
                        Moqueo
                        Congestión nasal
                        Ojos enrojecidos, llorosos
                        Fiebre
                        Tos
                        Luego de una semana o dos los signos y síntomas empeoran. La mucosidad espesa se acumula en las vías respiratorias y causa una tos incontrolable. Los ataques graves y prolongados de tos pueden:
                        
                        Provocar vómitos
                        Volver el rostro enrojecido o azulado
                        Causar fatiga extrema
                        Terminar con un sonido silbante y chillón agudo al inhalar aire
                        No obstante, muchas personas no presentan el característico sonido chillón. A veces, una tos seca persistente es el único signo de que un adolescente o adulto tiene tos ferina.
                        
                        Los bebés puede que no tosan en absoluto. En cambio, puede que se les haga difícil respirar o incluso dejen de respirar temporalmente. 
                    </p>
                    <br>
                    
                    <h2>Prevencion</h2>
                    <br>
                    <p>
                        La mejor forma de prevenir la tos ferina es mediante la vacuna contra la pertusis que los médicos suministran junto con otras vacunas que actúan contra otras dos enfermedades graves: la difteria y el tétanos. Los médicos recomiendan comenzar la vacunación durante la infancia.   
                    </p>
                    
                    <br>
                    <img src="https://www.mdpi.com/vaccines/vaccines-08-00621/article_deploy/html/images/vaccines-08-00621-g001-550.jpg" height="100px" alt="">
                    <img src="https://vaccination-info.eu/sites/default/files/styles/is_large/public/images/symptoms-pertussis.jpg?itok=PLy1Td5y" height="100px" alt="">
                    <img src="https://i0.wp.com/www.nfid.org/wp-content/uploads/2019/08/Pertussis-v1.png?ssl=1" height="100px" alt="">
            </section>
            <section class="l" id="enfe6">
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
           


    </article>











<script src="./js/index.js"></script>
</body>
</html>