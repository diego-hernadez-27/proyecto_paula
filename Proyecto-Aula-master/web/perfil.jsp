<%-- 
    Document   : perfil
    Created on : 11/06/2021, 12:18:33 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto aula</title>
    <link rel="stylesheet" href="./css/perfilestilo.css">
    <link rel="stylesheet" href="./css/menu.css">
    <link rel="stylesheet" href="./css/Tablas.css">
    <link rel="stylesheet"  href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    
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
                        <li><small><small><a href="perfil.html" class="menu-item"><img src="./img/perfil.png" alt="" style="width: 30px; height: 30px; border-radius: 10px; align-items: center;"></a></small></small></li>
                        <li><small><small><a href="#modal" id="show-modal" class="menu-item"><img src="./img/registro.png" alt="" style="width: 40px; height: 40px; border-radius: 10px;"></a></small></small></li>
    
                            <aside id="modal" class="modal">
                                <div class="content-modal">
                                    <header class="hola">
                                        <a href="#" class="close-modal">X</a>
                                        <h2>Crea tu nuevo usuario</h2>
                                        <article>
                                            <br>
                                            <form name="formulario" method="post" action="Registrar">
                                            <label>Nombre:</label>
                                            <input type="text" name="nom" color="white">
                                            <br>
                                            <br>
                                            <label>Apellido Paterno:</label>
                                            <input type="text" name="appat" color="white">
                                            <br>
                                            <br>
                                            <label>Apellido Materno</label>
                                            <input type="text" name="apmat" color="white">
                                            <br>
                                            <br>
                                            <label>Edad</label>
                                            <input type="number" name="edad" min="01" max="99" size="2" color="white">
                                            <br>
                                            <br>
                                            <label>Correo</label>
                                            <input type="email" name="email" color="white">
                                            <br>
                                            <br>
                                            <label>Nombre de usuario</label>
                                            <input type="text" name="usuario" color="white">
                                            <br>
                                            <br>
                                            <label>Contraseña</label>
                                            <input type="password" name="cont" color="white">
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
                                                
                                                <label> Usuario:, <INPUT type="text" name="user" color="white"> </label>
                                                    <br>
                                                    <br>
                                                <label > Contraseña: <INPUT type="pass" name="pass" color="white"></label> 
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




 


    
    <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar">
                    <button type="button" class="boton-avatar">
                        <i class="far fa-image"></i>
                    </button>
                </div>
                <button type="button" class="boton-portada">
                    <i class="far fa-image"></i> Cambiar fondo
                </button>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo">Ejemplo</h3>
                <p class="texto">ÑE</p>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-user-tag"></i>Nombre: </li>
                    <li><i class="icono fas fa-weight"></i>Peso: </li>
                    <li><i class="icono fas fa-allergies"></i>Alergias: </li>
                    <li><img src="https://img.icons8.com/material-sharp/24/000000/age.png"/>Edad: </li>
                </ul>
                <ul class="lista-datos">
                    <li><i class="icono fas fa-map-marker-alt"></i>Dirección email</li>
                    <li><i class="icono fas fa-user-check"></i> Registro.</li>
                </ul>
            </div>
            <div class="redes-sociales">
                <a href="" class="boton-redes facebook fab fa-facebook-f"><i class="icon-facebook"></i></a>
                <a href="" class="boton-redes twitter fab fa-twitter"><i class="icon-twitter"></i></a>
                <a href="" class="boton-redes instagram fab fa-instagram"><i class="icon-instagram"></i></a>
            </div>
        </div>
    </section>
    <section class="seccion-info-usuario">
        <div class="info-contenedor">
            <div class="mani">
                <h1></h1>
            </div>
        </div>
    </section>
    
<secttion>
    <%
       Connection con = null;
       Statement sta = null;
       ResultSet res = null;
 
       
     
    try{
           Class.forName("com.mysql.jdbc.Driver");                        
           con = DriverManager.getConnection("jdbc:mysql://localhost/proyecto", "root", "Root");
           
  
        try {
      sta = con.createStatement();
           String p1CV = request.getParameter("p1CV");
           String p2CV = request.getParameter("p2CV");
           String p3CV = request.getParameter("p3CV");
           String p4CV = request.getParameter("p4CV");
           String p5CV = request.getParameter("p5CV");
           String p6CV = request.getParameter("p6CV");
           String p7CV = request.getParameter("p7CV");
           String p8CV = request.getParameter("p8CV");
           String p9CV = request.getParameter("p9CV");
           String p10CV = request.getParameter("p10CV");
           String p11CV = request.getParameter("p11CV");
           String p12CV = request.getParameter("p12CV");
           String p13CV = request.getParameter("p13CV");
           String p14CV = request.getParameter("p14CV");
           /*-------------------------------------------------*/
           String p1D = request.getParameter("p1D");
           String p2D = request.getParameter("p2D");
           String p3D = request.getParameter("p3D");
           String p4D = request.getParameter("p4D");
           String p5D = request.getParameter("p5D");
           String p6D = request.getParameter("p6D");
           String p7D = request.getParameter("p7D");
           /*-------------------------------------------------*/
           String p1CON = request.getParameter("p1CON");
           String p2CON = request.getParameter("p3CON");
           String p3CON = request.getParameter("p3CON");
           String p4CON = request.getParameter("p4CON");
           String p5CON = request.getParameter("p5CON");
           String p6CON = request.getParameter("p6CON");
           /*------------------------------------------------*/
           String p1GIN = request.getParameter("p1GIN");
           String p2GIN = request.getParameter("p2GIN");
           String p3GIN = request.getParameter("p3GIN");
           String p4GIN = request.getParameter("p4GIN");
           String p5GIN = request.getParameter("p5GIN");
           /*-------------------------------------------------*/
           String p1HIPER = request.getParameter("p1HIPER");
           String p2HIPER = request.getParameter("p2HIPER");
           String p3HIPER = request.getParameter("p3HIPER");
           String p4HIPER = request.getParameter("p4HIPER");
           String p5HIPER = request.getParameter("p5HIPER");
           /*--------------------------------------------------*/
           int puntajeCON = 0;
           int puntajeGIN = 0;
           int puntajeHIPER = 0;
           int puntajeD = 0;
           int puntajeCV = 0;
                   
           if (p1CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p1CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 4;
           }
           if (p2CV.equals("Si")){
               puntajeCV = puntajeCV + 6;
           }else if (p2CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 3;
           }
           if (p3CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p3CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 4;
           }
           if (p4CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p4CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 3;
           }
           if (p5CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p5CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 4;
           }
           if (p6CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p6CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 4;
           }
              if (p7CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p7CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 5;
           }
            if (p8CV.equals("Si")){
               puntajeCV = puntajeCV + 8;
           }else if (p8CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 4;
           }
            if (p9CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p9CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 3;
           }
            if (p10CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p10CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 3;
           }
            if (p11CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p11CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 5;
           }
            if (p12CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p12CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 3;
           }   
           if (p13CV.equals("Si")){
               puntajeCV = puntajeCV + 7;
           }else if (p13CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 4;
           }
            if (p14CV.equals("Si")){
               puntajeCV = puntajeCV + 9;
           }else if (p14CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 4;
           }
/*                      COVID               */
/*-------------------------------------------------------------*/
               if (p1D.equals("Si")){
               puntajeD = puntajeD + 14;
           }else if (p1D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 6;
           }
                   if (p2D.equals("Si")){
               puntajeD = puntajeD + 14;
           }else if (p2D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 9;
           }
                       if (p3D.equals("Si")){
               puntajeD = puntajeD + 14;
           }else if (p3D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 8;
           }
                if (p4D.equals("Si")){
               puntajeD = puntajeD + 14;
           }else if (p4D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 7;
           }
               if (p5D.equals("Si")){
               puntajeD = puntajeD + 14;
           }else if (p5D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 8;
           }
                   if (p6D.equals("Si")){
               puntajeD = puntajeD + 14;
           }else if (p6D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 8;
           }
               if (p7D.equals("Si")){
               puntajeD = puntajeD + 16;
           }else if (p7D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 9;
           }
             /*                     DIABETES                */            
             /*---------------------------------------------*/              
                           
                if (p1CON.equals("Si")){
               puntajeCON = puntajeCON + 16;
           }else if (p1CON.equals("No")){
               puntajeCON = puntajeCON;
           }else{
               puntajeCON = puntajeCON + 8;
           }    if (p2CON.equals("Si")){
               puntajeCON = puntajeCON + 16;
           }else if (p2CON.equals("No")){
               puntajeCON = puntajeCON;
           }else{
               puntajeCON = puntajeCON + 7;
           }               
               if (p3CON.equals("Si")){
               puntajeCON = puntajeCON + 17;
           }else if (p3CON.equals("No")){
               puntajeCON = puntajeCON;
           }else{
               puntajeCON = puntajeCON + 9;
           }                
               if (p4CON.equals("Si")){
               puntajeCON = puntajeCON + 17;
           }else if (p4CON.equals("No")){
               puntajeCON = puntajeCON;
           }else{
               puntajeCON = puntajeCON + 10;
           }
               if (p5CON.equals("Si")){
               puntajeCON = puntajeCON + 17;
           }else if (p5CON.equals("No")){
               puntajeCON = puntajeCON;
           }else{
               puntajeCON = puntajeCON + 6;
           }    
               if (p6CON.equals("Si")){
               puntajeCON = puntajeCON + 17;
           }else if (p6CON.equals("No")){
               puntajeCON = puntajeCON;
           }else{
               puntajeCON = puntajeCON + 9;
           }    
           /*           CONGUNTIVITIS       */
           /*--------------------------------------*/
               if (p1GIN.equals("Si")){
               puntajeGIN = puntajeGIN + 20;
           }else if (p1GIN.equals("No")){
               puntajeGIN = puntajeGIN;
           }else{
               puntajeGIN = puntajeGIN + 12;
           }
               if (p2GIN.equals("Si")){
               puntajeGIN = puntajeGIN + 20;
           }else if (p2GIN.equals("No")){
               puntajeGIN = puntajeGIN;
           }else{
               puntajeGIN = puntajeGIN + 11;
           }
               if (p3GIN.equals("Si")){
               puntajeGIN = puntajeGIN + 20;
           }else if (p3GIN.equals("No")){
               puntajeGIN = puntajeGIN;
           }else{
               puntajeGIN = puntajeGIN + 9;
           }
               if (p4GIN.equals("Si")){
               puntajeGIN = puntajeGIN + 20;
           }else if (p4GIN.equals("No")){
               puntajeGIN = puntajeGIN;
           }else{
               puntajeGIN = puntajeGIN + 12;
           }
               if (p5GIN.equals("Si")){
               puntajeGIN = puntajeGIN + 20;
           }else if (p5GIN.equals("No")){
               puntajeGIN = puntajeGIN;
           }else{
               puntajeGIN = puntajeGIN + 9;
           }
           /*           GINGIVITIS      */
           /*---------------------------------*/
               if (p1HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 20;
           }else if (p1HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 10;
           }
              if (p2HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 20;
           }else if (p2HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 13;
           }
              if (p3HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 20;
           }else if (p3HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 9;
           }   
              if (p4HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 20;
           }else if (p4HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 12;
           }   
              if (p5HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 20;
           }else if (p5HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 9;
           }   
         /*         HIPERTENSION        */
         /*-------------------------------*/
              
          String resCV = "";
          String resCON = "";
          String resGIN = "";
          String resD = "";
          String resHIPER = "";
          
          
        if (puntajeCV >= 70){
            System.out.println("Muy probable");
            resCV = "Muy probable";
        }else if ( puntajeCV >= 50){
            System.out.println("Probable");
            resCV = "Probable";
        }else{
            System.out.println("Poco probable");
            resCV = "Poco probable"; 
        }
        /*-------------------------------------------*/
        
           if (puntajeD >= 70){
            System.out.println("Muy probable");
            resD = "Muy probable";
        }else if ( puntajeD >= 50){
            System.out.println("Probable");
            resD = "Probable";
        }else{
            System.out.println("Poco probable");
            resD = "Poco probable"; 
        }
        /*-------------------------------------------*/   
           if (puntajeCON >= 70){
            System.out.println("Muy probable");
            resCON = "Muy probable";
        }else if ( puntajeCON >= 50){
            System.out.println("Probable");
            resCON = "Probable";
        }else{
            System.out.println("Poco probable");
            resCON = "Poco probable"; 
        /*-------------------------------------------*/    
        }
           if (puntajeGIN >= 70){
            System.out.println("Muy probable");
            resGIN = "Muy probable";
        }else if ( puntajeGIN >= 50){
            System.out.println("Probable");
            resGIN = "Probable";
        }else{
            System.out.println("Poco probable");
            resGIN = "Poco probable"; 
        }
           /*-------------------------------------------*/
           if (puntajeHIPER >= 8){
            System.out.println("Muy probable");
            resHIPER = "Muy probable";
        }else if ( puntajeHIPER >= 5){
            System.out.println("Probable");
            resHIPER = "Probable";
        }else{
            System.out.println("Poco probable");
            resHIPER = "Poco probable"; 
        }   
        /*-------------------------------------------*/   
           String q;
           
            q = "insert into respuestas(p1CV, p2CV, p3CV, p4CV, p5CV, p6CV, p7CV, p8CV, p9CV, p10CV, p11CV, p12CV, p13CV, p14CV, p1D, p2D,"
                   + "p3D, p4D, p5D, p6D, p7D, p1CON, p2CON, p3CON, p4CON, p5CON, p6CON, p1GIN, p2GIN, p3GIN, p4GIN, p5GIN, p1HIPER, p2HIPER,"
                   + "p3HIPER, p4HIPER, p5HIPER, resCV, resD, resCON, resGIN, resHIPER)" + "values('"+p1CV+"','"+p2CV+"','"+p3CV+"','"+p4CV+"','"+p5CV+"','"+p6CV+"','"+p7CV+"','"
                   +p8CV+"','"+p9CV+"','"+p10CV+"','"+p11CV+"','"+p12CV+"','"+p13CV+"','"+p14CV+"','"+p1D+"','"+p2D+"','"+p3D+"','"+p4D+"','"+p5D+"','"+p6D+"','"+p7D+"','"+p1CON+"','"+p2CON+"','"+p3CON+"','"+p3CON+"','"+p4CON+"','"+p5CON+"','"+p6CON+"','"+p1GIN+"','"+p2GIN+"','"+p3GIN+"''"
                   +p4GIN+"','"+p5GIN+"','"+p1HIPER+"','"+p2HIPER+"','"+p3HIPER+"','"+p4HIPER+"','"+p5HIPER+"','"+resCV+"','"+resD+"','"+resCON+"','"+resGIN+"','"+resHIPER+"')";
           
           
            sta.executeUpdate(q);
            %>
            
            <h1><center>RESULTADOS DEL TEST</center></h1>
            <table  border="2" class="Tablas" style="text-align:center; width: 80%; border:2px black">
                <thead>
                 <tr>
                             <th><h2>TEST</h2></th>
                             <th><h2> COVID </h2></th>
                             <th><h2> DIABETES </h2></th>
                             <th><h2> CONJUNTIVITIS </h2></th>
                             <th><h2> GINGIVITIS </h2></th>
                             <th><h2> HIPERTENSION ARTERIAL </h2></th>
                 </tr>
                 </thead>
 
                             <th><h2>PUNTOS</h2></th>
                             <td><h2><%=puntajeCV%>/100</h2></td>
                             <td><h2><%=puntajeD%>/100</h2></td>
                             <td><h2><%=puntajeCON%>/100</h2></td>
                             <td><h2><%=puntajeGIN%>/100</h2></td>
                             <td><h2><%=puntajeHIPER%>/100</h2></td>
 
                         </tr>
 
                     <tbody>
                          <tr>
                     <th><h2>RESULTADO</h2></th>
                     <td><h2><%= resCV%></h2></td>
 
                     <td><h2><%= resD%></h2></td>
 
                     <td><h2><%= resCON%></h2></td>
 
                     <td><h2><%= resGIN%></h2></td>
 
                     <td><h2><%= resHIPER%></h2></td>
                         </tr>
                     </tbody>
                 </table>
            <div>
                <h1><center>**AVISO**</center></h1>
                <h3>ESTE TEST SOLO SIRVE PARA TENER UNA IDEA DE LAS POSIBLES ENFERMEDADES QUE USTED ESTE PADECIENDO YA QUE 
                DA CRITERIO A BASE DE LOS SINTOMAS MAS COMUNES SOBRE ESTAS ENFERMEDADES Y POR LO TANTO
                NO SEA TOMADA EN CUENTA COMO UN HECHO VERIDICO. SI USTED PRESENTA UN RESULTADO ALARMANTE, SE SUGIERE IR AL MEDICO
                MAS CERCANO.</h3>   
            </div>
            <%
            sta.close();
            
            }catch(SQLException ed){
                System.out.println("Error al registrar en la tabla..");
                System.out.println(ed.getMessage());
                
            }
           
           con.close();
           
    } catch(SQLException e) {
        System.out.println("Error..");
        System.out.println(e.getMessage());
        System.out.println(e.getStackTrace());
        System.out.println(e.getCause());
        %>
        <h1>Base de datoss</h1>
        <%
    }
           
           
           
           
       %>
</secttion>


    <script src="./js/index.js"></script>
</body>
</html>