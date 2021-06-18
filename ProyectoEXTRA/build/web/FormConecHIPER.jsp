<%-- 
    Document   : FormConecD
    Created on : 16/06/2021, 01:02:53 PM
    Author     : alesj
--%>

<%@page import="Controlador.consultas"%>
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="./css/estilosres.css">
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
           String p1HIPER = request.getParameter("p1HIPER");
           String p2HIPER = request.getParameter("p2HIPER");
           String p3HIPER = request.getParameter("p3HIPER");
           String p4HIPER = request.getParameter("p4HIPER");
           String p5HIPER = request.getParameter("p5HIPER");
           
           int puntajeHIPER = 0;
                   
           if (p1HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 2;
           }else if (p1HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 1;
           }
           if (p2HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 2;
           }else if (p2HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 1;
           }
           if (p3HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 2;
           }else if (p3HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 1;
           }
           if (p4HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 2;
           }else if (p4HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 1;
           }
           if (p5HIPER.equals("Si")){
               puntajeHIPER = puntajeHIPER + 2;
           }else if (p5HIPER.equals("No")){
               puntajeHIPER = puntajeHIPER;
           }else{
               puntajeHIPER = puntajeHIPER + 1;
           }
             /*                     DIABETES                */       
/*                      COVID               */
           String resHIPER = "";
           
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
           
           q = "insert into TESTHIPERTENSION(p1HIPER, p2HIPER, p3HIPER, p4HIPER, p5HIPER, resHIPER, usuario)" + "values('"+p1HIPER+"','"+p2HIPER+"','"+p3HIPER+"','"+p4HIPER+"','"+p5HIPER+"','"+resHIPER+"','"+usuario+"')";
           
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
                <td><%=puntajeHIPER%></td>
                <td><%=resHIPER%></td>
                <td><%=usuario%></td>
                <td><a href="resTestsHIPER.jsp">VER RESULTADOS ANTERIORES</a></td>
                
                </td>
            </tr>
            <%
            
                    
            sta.close();
            
            
            
            }catch(SQLException ed){
                System.out.println("Error al registrar en la tabla..");
                System.out.println(ed.getMessage());
                
            }
           
           con.close();
           
           
    }catch(SQLException e){
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