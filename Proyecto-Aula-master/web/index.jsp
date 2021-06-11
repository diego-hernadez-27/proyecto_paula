<%-- 
    Document   : index
    Created on : 10/06/2021, 05:07:47 AM
    Author     : 25666
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto aula</title>
    <link rel="stylesheet" href="./css/menu.css">
    <link rel="stylesheet" href="./css/iniformacionprincipal.css">
    <link rel="stylesheet" href="./css/demo.css">
    <script src="js/Cordenadas.js" type="text/javascript"></script>
    <script src="js/Todo.js" type="text/javascript"></script>

    
</head>
<body>
    <header>
        <nav id="yameharte">
            <div class="logo">
                <a class="kawai" href="index.jsp"><img src="img/Spider.png"></a>        
            </div>
            <div class="navegacion">
                    <ul class="menu-items">
                        <li class="normie">
                            <a class="kawai" href="index.jsp">
                                Inicio
                            </a>
                        </li>

                        
                        <li class="dropdown">
                            <a href="#" class="menu-item">Conocenos</a>
                            <ul class="dropdown-menu">
                              <li><a href="Conocenos.html" class="menu-item">Conocenos</a></li>
                              <li><a href="Casosdeexito.html" class="menu-item">Casos de exito</a></li>
                              <li><a href="Productosyservicios.html" class="menu-item">Productos y servicios</a></li>
                              
                            </ul>
                          </li>
                        
                        <li class="normie">
                            <a class="kawai" href="Contacto.html">
                                Contacto
                            </a>
                        </li>
                        <li><small><small><a href="perfil.jsp" class="menu-item"><img src="./img/perfil.png" alt="" style="width: 30px; height: 30px; border-radius: 10px; align-items: center;"></a></small></small></li>
                        <li><small><small><a href="#modal" id="show-modal" class="menu-item"><img src="./img/registro.png" alt="" style="width: 40px; height: 40px; border-radius: 10px;"></a></small></small></li>
    
                            <aside id="modal" class="modal">
                                <div class="content-modal">
                                    <header class="hola">
                                        <a href="#" class="close-modal">X</a>
                                        <h2>Crea tu nuevo usuario</h2>
                                        <article>
                                            <br>
                                            <form name="formulario" method="post" action="Registrar" enctype="multipart/form-data">
                                            <label>Nombre:</label>
                                            <input type="text" name="nom" >
                                            <br>
                                            <br>
                                            <label>Apellido Paterno:</label>
                                            <input type="text" name="appat" >
                                            <br>
                                            <br>
                                            <label>Apellido Materno:</label>
                                            <input type="text" name="apmat" >
                                            <br>
                                            <br>
                                            <label>Edad:</label>
                                            <input type="number" name="edad" min="01" max="99" size="2">
                                            <br>
                                            <br>
                                            <label>Correo:</label>
                                            <input type="email" name="email" >
                                            <br>
                                            <br>
                                            <label>Nombre de usuario:</label>
                                            <input type="text" name="usuario" >
                                            <br>
                                            <br>
                                            <label>Contraseña:</label>
                                            <input type="password" name="cont" >
                                            <br>
                                            <br>
                                            <label>Foto de perfil:</label>
                                            <input type="file" name="fper" >
                                            <br>
                                            <br>
                                            <label>Foto de portada:</label>
                                            <input type="file" name="fpor" >
                                            <br>
                                            <br>
                                            <input type="submit" value="Registro de Usuarios" class="boton" >
                                            <input type="reset" value="Limpiar Campos"  class="boton">
                                            </form>
                                        </article>
                                    </header> 
                                </div>
                                <a href="#" class="btn-close-modal"></a>
                            </aside>
                           
    
                        <li><small><small><a href="#modal2" class="menu-item2"><img src="./img/contrasena-de-inicio-de-sesion.png" alt="" style="width: 40px; height: 40px; border-radius: 10px;"></a></small></small></li>
                            <aside id="modal2" class="modal2">
                                <div class="content-modal2">
                                    <header class="hola">
                                        <a href="#" class="close-modal2">X</a>
                                        <h2>Usar un usuario</h2>
                                        <article>
                                        <br><br>
                                        <!-- <SCRIPT  language=JavaScript> 
                                                function go(){
                                                
                                                if (document.form.password.value=='CONTRASEÑA' && document.form.login.value=='USUARIO'){ 
                                                        document.form.submit(); 
                                                    } 
                                                    else{ 
                                                         alert("Porfavor ingrese, nombre de usuario y contraseña correctos."); 
                                                    } 
                                                } 
                                                </SCRIPT> -->
                                                <form name=form action="InicioSesion">
                                                
                                                <label> Usuario:    <INPUT type="text" name="user"> </label>
                                                    <br>
                                                    <br>
                                                <label > Contraseña: <INPUT type="password" name="pass"></label> 
                                                    <br>
                                                    <br>
                                                <input type="submit" value=Acceder class="boton">
                                                <input type="reset" value="Borrar Datos" class="boton">
                                                </form> 
                                            <br>
                                        </article>
                                    </header> 
                                </div>
                                <a href="#" class="btn-close-modal2"></a>
                            </aside>
                
                    </ul>
            </div>        
        </nav>
    </header>




    


        <article>
                <section>
                    <H1>SPIDER BYTE<marquee direction="right">Enfermedades</marquee></H1>

                    <img src="./img/Logo_DoctorVirtual_N.png" height="150" border="6" class="hola">
                    <p style="font-size: 25px; text-align: right;">XFactor Enfermedades o MedicAsist</p>
                    <br>
                    <p style="font-size: 15px; text-align:right;">SPIDER-BYTE ha pensado en desarrollar  una página web en la que los usuarios proporcionen 
                    su estado de salud (por medio de un cuestionario) </p>
                    <p style="font-size: 15px; text-align:right;">sacando un diagnóstico de alguna enfermedad que es propenso a tener el usuario, para así recomendar cosas que podría hacer </p>
                    <p style="font-size: 15px; text-align:right;"> para prevenir la enfermedad.
                    La problemática es básicamente que algunas personas por razones innumerables como tiempo, cosas que hacer, etc, 
                    </p>
                    
                    <p style="font-size: 15px; text-align:right;">no puedan hacerse una revisión general de su salud, por lo que a la larga puede empeorar su salud si no se chequean rápidamente</p>
                    <p style="font-size: 15px; text-align:right;">El proyecto fue propuesto para ayudar a los usuarios a mantener una buena salud al examinar su salud que pueda realizarse en cualquier momento</p>
                    <p style="font-size: 15px; text-align:right;">y de forma rápida. Tenemos planeado que este proyecto finalice en 12 semanas.</p>
                    <br>
                </section>


                <section class="segundo">

                    <p align="center">heee aqui un mapa mundial que va a contener las enfermedades mas comunes de los paises asi como graficas de porcentajes de esas mismas enfermedades</p>
                    <p align="center"> pulse el pais que quiere revisar UnU</p>
  
                        <div id="holder_1000" style="position:relative"></div>

                        
                    

                        <script type="text/javascript">        
                        var current = null;
                        var map = {};
                        var m = {};				
                        var map = {};
                        let num = 0
                        var svgHeight = 400;
                        var svgWidth = 1000;
                        var preserveAspectRatio="xMinYMin slice"

                        var R = Raphael("holder_1000", "100%", "100%");
                                
                        R.setViewBox(0, 0, svgWidth, svgHeight, true);
                        
                        render_map(R,map,num)
                            
                        for (var state in map) {							        
                            map[state].color = Raphael.getColor();
                            (function (st, state) {
                            st[0].onmouseover = () => {
                                R.safari()
                                current = state
                            }
                            st[0].onmouseout = () => {
                                R.safari();
                            }
                            st[0].onclick = () => {
                                alert(state);
                            }
                            })(map[state], state);
                        }       
                        let render = num => {
                            render_map(R,map,num)
                        
                        }
                        
                        
                        </script>

                </section>
        </article>

    








    <footer class="foter">

        <div class="container-footer-all">

            <div class="container-body">

                <div class="colum1">
                    <h1>Mas informacion de la compañia</h1>

                    <p>Esta compañia se dedica a la venta de software integrado con un
                        conjunto de cosas que no se lo que estoy escribiendo, este
                        texto es solo para llenara informacion en el cuadro de informacion
                        de la compañia.</p>

                </div>

                <div class="colum2">

                    <h1>Redes Sociales</h1>

                    <div class="row">
                        <img src="./img/menu/facebook.png">
                        <label>Siguenos en Facebook</label>
                    </div>
                    <div class="row">
                        <img src="./img/menu/twitter.png">
                        <label>Siguenos en Twitter</label>
                    </div>
                    <div class="row">
                        <img src="./img/menu/instagram.png">
                        <label>Siguenos en Instagram</label>
                    </div>



                </div>

                <div class="colum3">

                    <h1>Informacion Contactos</h1>

                    <div class="row2">
                        <img src="./img/menu/house.png">
                        <label>La Romana,
                            Republica Dominicana
                            Manuel del Cabral
                            Casa # 27</label>
                    </div>

                    <div class="row2">
                        <img src="./img/menu/smartphone.png">
                        <label>+1-829-395-2064</label>
                    </div>

                    <div class="row2">
                        <img src="./img/menu/contact.png">
                        <label>Correo de la empresa que creare</label>
                    </div>

                </div>

            </div>

        </div>

        <div class="container-footer">
            <div class="footer">
                <div class="copyright">
                    © 2021 Todos los Derechos Reservados | <a href="">SPIDER BYTE</a>
                </div>
            </div>
        </div>
    </footer>
    




    <script src="./js/index.js"></script>
</body>
</html>