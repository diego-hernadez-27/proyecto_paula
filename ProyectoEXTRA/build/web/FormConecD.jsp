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
           con = DriverManager.getConnection("jdbc:mysql://localhost/proyectoextra", "root", "Elgato66");
           
  
        try {
           sta = con.createStatement();
           String p1D = request.getParameter("p1D");
           String p2D = request.getParameter("p2D");
           String p3D = request.getParameter("p3D");
           String p4D = request.getParameter("p4D");
           String p5D = request.getParameter("p5D");
           String p6D = request.getParameter("p6D");
           String p7D = request.getParameter("p7D");
           /*-------------------------------------------------*/
           
           int puntajeD = 0;
                   
           if (p1D.equals("Si")){
               puntajeD = puntajeD + 2;
           }else if (p1D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 1;
           }
           if (p2D.equals("Si")){
               puntajeD = puntajeD + 2;
           }else if (p2D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 1;
           }
           if (p3D.equals("Si")){
               puntajeD = puntajeD + 2;
           }else if (p3D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 1;
           }
           if (p4D.equals("Si")){
               puntajeD = puntajeD + 2;
           }else if (p4D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 1;
           }
           if (p5D.equals("Si")){
               puntajeD = puntajeD + 2;
           }else if (p5D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 1;
           }
           if (p6D.equals("Si")){
               puntajeD = puntajeD + 2;
           }else if (p6D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 1;
           }
           if (p7D.equals("Si")){
               puntajeD = puntajeD + 2;
           }else if (p7D.equals("No")){
               puntajeD = puntajeD;
           }else{
               puntajeD = puntajeD + 1;
           }
             /*                     DIABETES                */       
/*                      COVID               */
           String resD = "";
           
             if (puntajeD >= 8){
            System.out.println("Muy probable");
            resD = "Muy probable";
        }else if ( puntajeD >= 5){
            System.out.println("Probable");
            resD = "Probable";
        }else{
            System.out.println("Poco probable");
            resD = "Poco probable"; 
        }
        /*-------------------------------------------*/
                      
           String q;
           
           q = "insert into TESTDIABETES(p1D, p2D, p3D, p4D, p5D, p6D, p7D, resD, usuario)" + "values('"+p1D+"','"+p2D+"','"+p3D+"','"+p4D+"','"+p5D+"','"+p6D+"','"+p7D+"','"+resD+"','"+usuario+"')";
           
            sta.executeUpdate(q);
                
        
        
         
           
             %>
             <center><h1>TABLA DE RESULTADOS DE LOS TEST DE DIABETES</h1></center>
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
                <td><%=puntajeD%></td>
                <td><%=resD%></td>
                <td><%=usuario%></td>
                <td><a href="resTestsD.jsp">VER RESULTADOS ANTERIORES</a></td>
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