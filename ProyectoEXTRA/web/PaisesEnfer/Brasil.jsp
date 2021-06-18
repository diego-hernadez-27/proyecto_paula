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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto aula</title>
    <link rel="stylesheet" href="../css/paginaprincipal.css">
    <link rel="stylesheet" href="./css/Brazil.css">
    <script src="./js/instrucciones.js" type="text/javascript"></script>

<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script> 
<script src='./py/morris.min.js'></script>
<script>    

function grafica1(){
  new Morris.Bar({
  element: 'graph',
  data: [{x:'VIH 20%', y:40 , z:1, } ,
{x:'Fiebre amarilla 20%', y:30, z:2},
{x:'Fiebre Tifoidea 20%', y:30, z:3},
{x:'Virus del nilo occidental 10%', y:20, z:4},
{x:"Zika 10%", y:20, z:5},
{x:'pedoconiosis 30% ', y:10, z:6},
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
        
                <section class="j">
                    <H1>BRASIL</H1>
                    <br>
                    <h4>Las enfermedades en brasil asi como su salud.</h4>
                    <br>
                    <p>Brasil, que está compuesto por un sector público que cubre alrededor de 75% de la población y un creciente sector privado que ofrece atención a la salud al restante 25% de los brasileños. El sector público está constituido por el Sistema Único de Salud (SUS) y su financiamiento proviene de impuestos generales y contribuciones sociales recaudadas por los tres niveles de gobierno (federal, estatal y municipal). El SUS presta servicios de 
                        manera descentralizada a través de sus redes de clínicas, hospitales y otro tipo de instalaciones, y a través de contratos con establecimientos privados. El SUS es además responsable de la coordinación del sector público. El sector privado está conformado por un sistema de esquemas de aseguramiento conocido como Salud Suplementaria financiado con recursos de las empresas y/o las familias: la medicina de grupo (empresas y familias), 
                        las cooperativas médicas, los llamados Planes Autoadministrados (empresas) y los planes de seguros de salud individuales. También existen consultorios, hospitales, clínicas y laboratorios privados que funcionan sobre la base de pagos de bolsillo, que utilizan sobre todo la población de mayores ingresos. En este trabajo se analizan los recursos con los que cuenta el sistema, las actividades de rectoría que se desarrollan y las innovaciones 
                        más recientemente implantadas, incluyendo el Programa de Salud de la Familia y el Programa Más Salud.</p>

                        <img src="./img/qwerthyju.png" height="100px" alt=""> 
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
                    <a href="#enfe1" onclick="mostrar('enfe1')"><img src="./img/Podoconiosis.png" class="p" ></a>
                    <a href="#enfe2" onclick="mostrar('enfe2')"><img src="./img/VIH-_-SIDA-Fundacion-io-1024x1024.png" class="p"></a>
                    <a href="#enfe3" onclick="mostrar('enfe3')"><img src="./img/Fiebre-amarilla-fundacionio-1024x1024.png" class="p"></a>
                    <a href="#enfe4" onclick="mostrar('enfe4')"><img src="./img/FiebreTifoidea-fundacionio-1024x1024.png" class="p"></a>
                    <a href="#enfe5" onclick="mostrar('enfe5')"><img src="./img/west-nile-virus-fundacion-io-1024x1024.png" class="p"></a>
                    <a href="#enfe6" onclick="mostrar('enfe6')"><img src="./img/Zika-Fundacion-io-1024x1024.png" class="p"></a>
                    

                </section>
                
                <section class="l" id="enfe1">
                    <h2>Podoconiosis</h2>
                    <br>
                    <p>La podoconiosis una enfermedad geoquímica producida por partículas finas de minerales de tierras arcillosas volcánicas que penetran la piel de los pies y 
                        producen una endolinfangitis obliterante progresiva en personas susceptibles.
                        La podoconiosis (del griego podos – pie y konia-polvo) también es conocida como enfermedad de Price o elefantiasis endémica no filariasica 
                        y ha sido catalogada como una de las enfermedades tropicales desatendidas (neglected tropical disease) por la OMS.
                    </p>
                    <br>
                    <p>
                        La podoconiosis afecta a personas que habitan en las tierras altas de África tropical, Centroamérica y el noroeste de la India. Las condiciones climáticas 
                        favorecen el desgaste de la roca volcánica y las partículas de minerales entran en la tierra. La enfermedad se ha descrito en al menos 15 países y en África 
                        se han registrado casos en Etiopía, Camerún, Ruanda, Burundi, Uganda, Tanzania, Kenia, Sudán y las islas de Cabo Verde, Bioko (Guinea Ecuatorial), y Sao Tomé y Príncipe. 
                    </p>
                    <br>
                    <p>
                        Los primeros síntomas suelen aparecer en la primera o segunda década de la vida y la prevalencia de la enfermedad aumenta progresivamente hasta la sexta década. Inicialmente 
                        puede haber prurito y parestesias en zonas distales de miembros inferiores. Posteriormente se puede objetivar edema plantar, aumento de los pliegues cutáneos, e hiperqueratosis 
                        con formación de lesiones tipo papilomas. Estas lesiones dan un aspecto característico que hacen que parezca que el pie está cubierto de musgo 
                        (la enfermedad también se denomina “Mossy Foot disease”- “Pies de musgo”).
                        El edema se puede mantener blando o dar lugar a una piel dura y fibrótica con nódulos cutáneos asociados en algunos de los casos. Se pueden objetivar además episodios de adenolinfangitis 
                        con fiebre y dolor en la extremidad que podrían estar asociados con la progresión eventual a fibrosis.
                    </p>
                    <br>
                    <h2>Tratamientos</h2>
                    <br>
                    <p>
                        La prevención primaria se basa en evitar el contacto directo con la tierra de las características descritas, mediante el uso de calzado y cubriendo el suelo de las viviendas tradicionales
                         fabricadas directamente sobre el terreno. En la prevención secundaria se utilizan estrategias similares a las usadas en los pacientes con filariasis linfática y linfedema: lavado diario, 
                         uso de emolientes, vendajes compresivos en algunos pacientes con edema blando, ejercicios y elevación de los miembros inferiores para facilitar el drenaje linfático y el uso de calzado.
                          La prevención terciaria incluye las medidas usadas en la prevención secundaria con elevación y compresión de la pierna afecta y en casos seleccionados la escisión de los nódulos más prominentes.
                           No se suelen recomendar cirugías más agresivas puesto que si los pacientes posteriormente no pueden evitar el contacto con la tierra suelen desarrollarse nuevamente edemas que son incluso más 
                           dolorosos por la presencia del tejido cicatricial. Existen varias iniciativas nacionales e internacionales como “Footwork- International Podoconiosis Initiative”, para apoyar la prevención y el 
                           tratamiento de la podoconiosis.
                    </p>
                    <br>
                    <img src="./img/podologo.jpg" style="height: 100px;">
                    
                    <img src="./img/descargar1.jpg" style="height: 100px;">
                </section>
                
                <section class="l" id="enfe2">
                    <h2>VIH</h2>
                    <p>El VIH-1 está constituido por dos cadenas idénticas de ARN de polaridad positiva. Capacidad para sintetizar ADN, catalizada por una ADN polimerasa ARN dependiente (transcriptasa reversa). Presencia de envoltura.
                        El tipo 2 (VIH-2) es endémico en varios países de África Occidental, estructuralmente se parece más al virus de la inmunodeficiencia de los simios (VIS) que al VIH-1 y evoluciona de forma más lenta y benigna que el VIH-1.
                         Dentro del VIH-1 hay varios grupos (M, O, N, P), subtipos (9 dentro del grupo M) y formas recombinantes (al menos 60 dentro del grupo M) siendo el subtipo B el más frecuente en los países occidentales y el C a nivel global.
                          Las infecciones por los subtipos O, N y P son poco frecuentes y están bastante confinadas a África Occidental (Camerún).
                    </p>
                    <br>
                    <h2>Mecanismo de tranmision</h2>
                    <p>
                        Transmisión sexual, parenteral y vertical. Riesgo muy bajo si la persona infectada tiene una carga viral indetectable (en general como respuesta al tratamiento antirretroviral, pero también en los controladores espontáneos).
                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <br>
                    <p>
                        Desde el momento en que el VIH infecta a un paciente (independientemente de la vía por la que se produjo el contagio) prolifera de forma continua y rápidamente se disemina sobre todo por las estructuras linfoides, mucosa intestinal 
                        y ganglios linfáticos y además se integra como ADN proviral en un pequeño número (< 107) de células del huésped (en general linfocitos CD4+ en reposo y con fenotipo memoria). Cabe distinguir:
                        <br><br>
                        1) una fase precoz o aguda de varias semanas de duración y con una viremia alta que disminuye rápidamente debido a la actividad sobre todo citotóxica del sistema inmunológico y hasta un nivel diferente (set-point) de unos pacientes 
                        a otros, y que determina su pronóstico futuro. En un 50-70% de los casos se asocia a un síndrome mononucleósico con exantema, pero puede haber otros síntomas, como una meningoencefalitis;
                        <br><br>
                        2) una fase intermedia o crónica de varios años de duración con replicación viral activa, viremia de nivel intermedio y variable de unos pacientes a otros (set-point) y relativamente estable durante periodos discretos de tiempo, pero que va aumentando.
                        El nivel de viremia circulante es el mejor y más precoz marcador pronóstico
                        <br><br>
                        3) una fase final o de crisis, en la que la viremia alcanza valores más elevados, desciende la cifra de linfocitos CD4 por debajo de 200 células/mL y aparecen complicaciones infecciosas (infecciones oportunistas) o neoplásicas (sarcoma de Kaposi y linfomas, entre otras)
                    </p>
                    <br>
                    <h2>Diagnosticos (hay tratamiento pero aun hay fallas)</h2>
                    <p>
                        El diagnóstico de infección por el VIH se hace mediante serología, es decir, la detección de anticuerpos VIH-1/2 o simultáneamente de anticuerpos VIH-1/2 y del antígeno p24 del VIH-1. Los ensayos serológicos de cribado, utilizan la metodología de inmunoensayo (EIA, CLIA, CMIA, QIA, etc.);
                         actualmente los de cuarta generación permiten la determinación simultánea de anticuerpos y antígeno p24 (tipo Combo), reduciéndose el tiempo de detección a los pocos días después de la infección. Los ensayos de confirmación, Western Blot (WB) y el inmunoensayo en línea (LIA), tienen una 
                         especificidad superior y permiten conocer si las muestras reactivas con un ensayo de cribado, contienen anticuerpos para el VIH-1/2.
                    </p>
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
                    <h2>Fiebre tifoidea</h2>
                    <br>
                    <p>
                        La fiebre tifoidea es una enfermedad bacteriana transmitida por la ingestión de alimentos o agua contaminados. La bacteria sólo vive en los humanos y se expulsa en las heces de una persona afectada o de un portador.
                        La fiebre tifoidea es inusual en los países desarrollados, donde el grado de higiene y el sistema de alcantarillado son adecuados. La mayoría de los casos en estos países se da en viajeros que regresan de países en vías de desarrollo donde estos factores son menos rigurosos.
                        Se ha calculado que en el mundo se producen 17 millones de casos de fiebre tifoidea cada año, con un total de 600.000 víctimas mortales.
                    </p>
                    <br>
                    <h2>Epidemiología</h2>
                    <br>
                    <p>
                        Las posibilidades de contraer la infección por agua contaminada suelen estar relacionadas con las dosis (mientras más bacterias se ingieran, más probabilidades hay de contraer la enfermedad y peor serán los síntomas).
                    </p>
                    <br>
                    <h2>Sintomas</h2>
                    <br>
                    <p> 
                        El período de incubación medio es de 2 semanas aunque varía según la dosis de bacterias ingeridas. Los síntomas pueden ser relativamente leves al principio, de nuevo dependiendo del grado de exposición. En ausencia de tratamiento se da un rápido deterioro en 2 semanas, durante las cuales el estado de la persona puede agravarse considerablemente.
                        Los síntomas habituales son: fiebre alta, dolor de cabeza, dolor de estómago, debilidad, letargo, pérdida de apetito, estreñimiento (aunque puede haber diarrea), tos y sordera. La fiebre suele aumentar día tras día durante la primera semana, a menudo empeorando por la noche.
                        A veces aparecen manchas rosáceas en el tronco durante la segunda semana. La diarrea suele surgir en la segunda semana y puede provocar deshidratación extrema. En casos graves el sistema nervioso central puede resultar afectado, causando una enfermedad parecida a la meningitis y el coma.
                        El riesgo de infección grave aumenta en el caso de personas con inmunidad comprometida o que están tomando medicamentos para suprimir la secreción de ácidos gástricos (omeprazol, ranitidina …), que actúan como primera línea de defensa del organismo.
                        Las complicaciones de la fiebre tifoidea pueden dañar el organismo de diversas formas, ya que puede darse perforación del intestino, aumento de la tendencia hemorrágica, neumonía, insuficiencia renal, trombosis venosa profunda, meningitis, artritis e infección ósea.
                    </p>

                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        A lo largo del tratamiento, es vital asegurar la ingestión de líquidos en abundancia. Los síntomas suelen disminuir a los 2-3 días de iniciar el régimen de antibióticos generalmente ciprofloxacino o trimetoprim. Durante la medicación se recomienda el lavado de manos después de ir al baño y evitar preparar comidas para otras personas.
                    </p>
                    <img src="https://www.laprensagrafica.com/__export/1531023763412/sites/prensagrafica/img/2018/07/07/saludtifoidea2.jpg_525981578.jpg" height="100px" alt="">
                    <img src="https://globetechcdn.com/es_labmedica/images/stories/articles/article_images/2017-05-30/GMS-121.jpg" height="100px" alt="">
                    <img src="https://www.clinicbarcelona.org/uploads/media/default/0002/77/443f2ead175b0da7a4a65a5b8646e1ffdaa2fc9d.jpeg" height="100px" alt="">
                    
                </section>
                <section class="l" id="enfe5">   
                    <h2>Virus del Nilo Occidental</h2>
                    <br>
                    <p>El virus del Nilo Occidental es un virus de ARN de una sola cadena de sentido positivo, de la familia Flaviviridae y género Flavivirus, que deriva de la encefalitis japonesa.
                        Una de las hipótesis sobre los mecanismos de neuroinvasividad del virus del Nilo occidental es que podría producir un aumento de la permeabilidad de la barrera hematoencefálica.
                        Se transmite por la picadura de un mosquito infectado, éstos se infectan cuando se alimentan a su vez, de pájaros infectados. Los mosquitos infectados pueden propagar el virus del Nilo Occidental a los seres humanos y a otros animales. Esta vía representa la causa de casi todas las infecciones humanas.
                        Transfusiones (plaquetas transfundidas, glóbulos rojos y plasma fresco congelado), trasplantes (corazón, hígado, pulmón y riñón). Desde 2003, las transfusiones de sangre de Estados Unidos se criban con el ARN para el WNV; por lo que la infección asociada a la transfusión es rara. La transmisión por trasplante de órganos ha ocurrido a pesar de que los donantes tenían viremia indetectable, lo que sugiere el secuestro viral en órganos.
                        Transplacentaria y lactancia. Hay un caso documentado de posible transmisión transplacentaria tras una infección en el segundo trimestre, con un cuadro de coriorretinitis, lisencefalia y pérdida de sustancia blanco cerebral del feto. Sin embargo, en otro estudio ninguno de los bebés nacidos vivos de 71 mujeres infectadas durante el embarazo tuvieron malformaciones vinculadas a la infección, ni evidencia de infección congénita por laboratorio.
                         WNV no se transmite por contacto casual como tocar o besar a una persona infectada.
                         El virus se mantiene en un ciclo natural entre aves y mosquitos. El hombre es un huésped accidental que no desarrolla viremia suficiente como para transmitir el virus al mosquito en caso de ser picado. Los caballos son también huéspedes accidentales y los casos equinos pueden preceder a los casos humanos en caso de epidemias.
                        </p>
                        <br>
                        <h2>Sintomas</h2>
                        <br>
                        <p>
                            Hasta un 20% de las personas que se infectan tendrán síntomas leves que pueden incluir fiebre, dolor de cabeza, mialgias, artralgias, náuseas, vómitos y adenopatías o erupción maculopapular, no pruriginosa, que predomina en torso y extremidades, sin afectar a palmas y plantas.
                            Los síntomas graves se dan en aproximadamente 1 de cada 150 personas infectadas con el virus. Éstos pueden incluir fiebre alta, dolor de cabeza, rigidez del cuello, estupor, desorientación, coma, temblores, convulsiones, debilidad muscular, pérdida de la visión, entumecimiento y parálisis. Estos síntomas pueden durar varias semanas y los efectos neurológicos pueden ser permanentes.
                            La enfermedad neuroinvasiva (meningitis, encefalitis, parálisis flácida aguda) se desarrolla en menos de 1%, aunque conlleva una tasa de mortalidad de aproximadamente el 10%.
                            Aproximadamente dos tercios de las personas que desarrollan una parálisis permanecen con debilidad significativa en las extremidades afectadas.
                            Un estudio de seguimiento en personas con viremia en sangre para el virus sugirió que las personas más jóvenes eran más propensas a desarrollar la fiebre del Nilo Occidental. Sin embargo, tener una edad avanzada aumentaba considerablemente el riesgo de enfermedad neuroinvasiva, particularmente la de encefalitis.
                        </p>
                        <br>
                        <h2>Tratamiento</h2>
                        <p>
                            El tratamiento de la infección es de soporte, no existe un tratamiento específico. En casos con afectación severa, es preciso ir al hospital donde se puedan recibir tratamiento de apoyo incluyendo líquidos intravenosos, soporte respiratorio y la atención de enfermería .
                        </p>
                        <br>
                        <img src="https://www.mayoclinic.org/-/media/kcms/gbs/patient-consumer/images/2013/11/15/17/36/ds00226_-ds00438_im00836_r7_westnileviruscyclethu_jpg.jpg" height="100px" alt="">
                        <img src="https://statics-cuidateplus.marca.com/sites/default/files/styles/natural/public/virus_del_nilo_0.jpg?itok=p10_4-y2" height="100px" alt="">
                        <img src="https://formacion.grupoasis.com/img/cursos/PY098720_WS-West_Nile_Virus_OCV_cabecera.jpg" height="100px" alt="">
                </section>
                <section class="l" id="enfe6">
                    <h2>Zika</h2>
                    <br>
                    <p>
                        El virus Zika es un flavivirus transmitido por mosquitos muy relacionado con otros de la familia Flaviviridae como el virus del dengue, el virus de la fiebre amarilla o el West Nile virus.
                        Aproximadamente el 20 por ciento de los pacientes infectados desarrollan manifestaciones clínicas, que incluyen fiebre de inicio súbito asociada a una erupción cutánea pruriginosa maculopapular, artralgias (sobre todo de pequeñas articulaciones de manos y pies) o conjuntivitis (no purulenta).
                        El virus tiene neurotropismo que se ha asociado a complicaciones neurológicas que incluyen microcefalia congénita (además de otros problemas de desarrollo entre bebés nacidos de mujeres infectadas durante el embarazo), síndrome de Guillain-Barré, mielitis y meningoencefalitis.
                        Puede ser considerado un patógeno emergente, al extenderse fuera de África y Asia.
                    </p>  
                    <br>
                    <h2>Sintomas</h2>
                    <br>
                    <p>
                        La enfermedad suele ser leve. Los síntomas que solo ocurren entre el 20-25% de las personas que se infectan se resuelven entre dos y siete días después. La enfermedad grave que requiere hospitalización es poco frecuente y las tasas de letalidad son bajas. Se ha sugerido que la infección previa por dengue puede proteger contra la infección sintomática por el virus del Zika.
                        Síntomas y signos. En adultos, los síntomas más comunes son leves dolores de cabeza, erupción cutánea pruriginosa (pueden aparecer máculas y pápulas eritematosas en la cara, el tronco, las extremidades, las palmas y las plantas), fiebre  (37.8 a 38.5°C), malestar general, conjuntivitis, y artralgias (dolores articulares sobre todo en las pequeñas articulaciones de las manos y los pies).
                        En algunos casos se ha descrito también la afectación gastrointestinal con dolor abdominal, diarrea o estreñimiento y vómitos y aftas orales. También aisladamente otras manifestaciones, como edema facial, petequias en el paladar, uveítis, problemas auditivos transitorios, miocarditis y pericarditis.
                        Mujeres embarazadas con síntomas sugestivos de infección por el virus deben hacerse la prueba lo antes posible. Está indicada la ecografía fetal y amniocentesis en aquellas que presenten hallazgos sugestivos de síndrome congénito por el virus del Zika y/o resultados positivos o no concluyentes de pruebas de laboratorio, cuando esta información afecte a las decisiones sobre la interrupción del embarazo o el manejo continuo del embarazo y el parto.
                    </p>
                    <br>
                    <h2>Tratamiento</h2>
                    <br>
                    <p>
                        No existe un tratamiento específico por lo que consiste en descansar y tratar los síntomas que aparezcan. Se recomiendan un consumo adecuado de líquidos para prevenir la deshidratación y la administración de paracetamol para aliviar la fiebre y el dolor.
                        Se debe evitar el ácido acetil salicílico y otros medicamentos antiinflamatorios no esteroideos (AINEs) hasta que se descarte la infección por dengue, para reducir el riesgo de hemorragia. El ácido acetil salicílico no debe usarse en niños con enfermedad viral aguda debido a su asociación con el síndrome de Reye.
                        La Organización Mundial de la Salud (OMS) ha publicado una guía sobre el apoyo psicosocial para pacientes y familias afectadas por la infección por el virus del Zika y las complicaciones asociadas.
                        De momento, no existe una vacuna comercializada.
                    </p>
                    <br>
                    <img src="https://unamglobal.unam.mx/wp-content/uploads/2020/02/zika.png" height="100px" alt="">
                    <img src="https://mk0hospitalcmqxhpyls.kinstacdn.com/wp-content/uploads/2017/08/zika.jpg" height="100px" alt="">
                    <img src="https://conceptodefinicion.de/wp-content/uploads/2016/01/Zika.jpg" height="100px" alt="">
               </section> 
               

        </article>

  

 





    <script src="./js/index.js"></script>
</body>
</html>