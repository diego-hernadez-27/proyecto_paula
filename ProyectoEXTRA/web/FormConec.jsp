<%-- 
    Document   : formconec
    Created on : 16/06/2021, 12:11:31 AM
    Author     : alesj
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/estilosres.css">
        <title</title>
    </head>
    <body>
          <%
    HttpSession objsesion = request.getSession(false);
    
    String usuario = (String)objsesion.getAttribute("usuario");
    if(usuario.equals("")){
        response.sendRedirect("index.jsp");
    }       
       Connection con = null;
       Statement sta = null;
       ResultSet res = null;
 
       
     
    try{
           Class.forName("com.mysql.jdbc.Driver");                        
           con = DriverManager.getConnection("jdbc:mysql://localhost/proyectoextra", "root", "admin");
           
  
        try {
            
           sta = con.createStatement();
           String p1CV = request.getParameter("Fiebre");
           String p2CV = request.getParameter("Tos");
           String p3CV = request.getParameter("Cansancio");
           String p4CV = request.getParameter("dificultad_respirar");
           String p5CV = request.getParameter("dolores_musculares");
           String p6CV = request.getParameter("Esacalofrios");
           String p7CV = request.getParameter("Edolor_garganta");
           String p8CV = request.getParameter("escurrimiento_nasal");
           String p9CV = request.getParameter("dolor_cabeza");
           String p10CV = request.getParameter("alrritmia_cardiaca");
           String p11CV = request.getParameter("conjutivitis");
           String p12CV = request.getParameter("nauseas");
           String p13CV = request.getParameter("diarrea");
           String p14CV = request.getParameter("sarpullido");
           
           int puntajeCV = 0;
                   
           if (p1CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p1CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
           if (p2CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p2CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
           if (p3CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p3CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
           if (p4CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p4CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
           if (p5CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p5CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
           if (p6CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p6CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
              if (p7CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p7CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
            if (p8CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p8CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
            if (p9CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p9CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
            if (p10CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p10CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
            if (p11CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p11CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
            if (p12CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p12CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }   
           if (p13CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p13CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
            if (p14CV.equals("Si")){
               puntajeCV = puntajeCV + 2;
           }else if (p14CV.equals("No")){
               puntajeCV = puntajeCV;
           }else{
               puntajeCV = puntajeCV + 1;
           }
/*                      COVID               */
            String resCV = "";
             if (puntajeCV >= 8){
            System.out.println("Muy probable");
            resCV = "Muy probable";
        }else if ( puntajeCV >= 5){
            System.out.println("Probable");
            resCV = "Probable";
        }else{
            System.out.println("Poco probable");
            resCV = "Poco probable"; 
        }
        /*-------------------------------------------*/
           
           String q;
           
           q = "insert into TESTCOVID(p1CV, p2CV, p3CV, p4CV, p5CV, p6CV, p7CV, p8CV, p9CV, p10CV, p11CV, p12CV, p13CV, p14CV, resCV, usuario)" + "values('"+p1CV+"','"+p2CV+"','"+p3CV+"','"+p4CV+"','"+p5CV+"','"+p6CV+"','"+p7CV+"','"
                   +p8CV+"','"+p9CV+"','"+p10CV+"','"+p11CV+"','"+p12CV+"','"+p13CV+"','"+p14CV+"','"+resCV+"', '"+usuario+"')";
           
            sta.executeUpdate(q);
           
             %>
             <center><h1>TABLA DE RESULTADOS DE LOS TEST DE COVID</h1></center>
        <div id="main-container">            
            <table>
                <thead>
                <tr>
                    <th>PUNTAJE</th>
                    <br>
                    <br>
                    <th>RESULTADO</th>
                    <br>
                    <br>
                    <th>USUARIO QUE LO REALIZO</th>
                    <br>
                    <br>
                    <th></th>
                </tr>
                </thead>
            <tr>
                <td><%=puntajeCV%></td>
                <td><%=resCV%></td>
                <td><%=usuario%></td>
                <td><a href="resTests.jsp">VER RESULTADOS ANTERIORES</a></td>
                </td>
            </tr>
            
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
