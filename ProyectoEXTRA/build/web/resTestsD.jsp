<%-- 
    Document   : resTests
    Created on : 16/06/2021, 06:28:18 PM
    Author     : alesj
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            Connection con;
            String url = "jdbc:mysql://localhost:3306/proyectoextra";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="admin";
            Class.forName(Driver);
            con=DriverManager.getConnection(url,user,clave);
            
            PreparedStatement ps;
            ResultSet rs;
            Statement sta = null;
            ps = con.prepareStatement("SELECT id_resD, resD, usuario FROM TESTDIABETES WHERE usuario = '"+usuario+"' ");
            rs = ps.executeQuery();
            

            
         %>
    <center><h1>TABLA DE RESULTADOS DE LOS TEST DE DIABETES</h1></center>
         <div id="main-container">
       
        <table>
            <tr>
                <th>ID DEL TEST</th>
                <br>
                <br>
                <th>RESULTADO</th>
                <br>
                <br>
                <th>USUARIO QUE LO REALIZO</th>                             
                <br>
                <br>
            </tr>
            <tr>
                <%
                while(rs.next()){
                %>
                <td><%= rs.getString("id_resD")%></td>
                <td><%= rs.getString("resD")%></td>
                <td><%= rs.getString("usuario")%></td>
                <td> 
                </td>
            </tr>
            <%}
            ps.close();
            con.close();
            rs.close();
            
            %>
            
            
            
        </table>
        </div>
    </body>
</html>
