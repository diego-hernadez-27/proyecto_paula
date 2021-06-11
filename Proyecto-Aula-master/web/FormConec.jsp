<%-- 
    Document   : FormConec
    Created on : 03-jun-2021, 2:19:38
    Author     : figue
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="./css/Tablas.css">
        <title></title>
    </head>
    <body>
        
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
            <table class="Tabla-Consulta" style="text-align:center; width: 100%;border: 2px;" >
                <thead> <tbody>
                 <tr>
                             <th><h2> COVID </h2></th>
                             <th><h2> DIABETES </h2></th>
                             <th><h2> CONJUNTIVITIS </h2></th>
                             <th><h2> GINGIVITIS </h2></th>
                             <th><h2> HIPERTENSION ARTERIAL </h2></th>
                 </tr>
                 </thead>
                     <tbody>
 
                             <th><h2> COVID </h2></th>
                             <th><h2> DIABETES </h2></th>
                             <th><h2> CONJUNTIVITIS </h2></th>
                             <th><h2> GINGIVITIS </h2></th>
                             <th><h2> HIPERTENSION ARTERIAL </h2></th>
 
                             <th></th>
                             <th></th>
                         </tr>
 
                    
                          <tr>
                     <td><h2><%=puntajeCV%>/100</h2></td>
                     <td><h2><%= resCV%></h2></td>
                     <td><h2><%=puntajeD%>/100</h2></td>
                     <td><h1><%= resD%></h1></td>
                     <td><h2><%=puntajeCON%>/100</h2></td>
                     <td><h1><%= resCON%></h1></td>
                     <td><h2><%=puntajeGIN%>/100</h2></td>
                     <td><h1><%= resGIN%></h1></td>
                     <td><h1><%=puntajeHIPER%>/100</h1></td>
                     <td><h1><%= resHIPER%></h1></td>
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
    </body>
</html>