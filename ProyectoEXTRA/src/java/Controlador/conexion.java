/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

/**
 *
 * @author alesj
 */
import java.sql.*;
public class conexion {
    
    public static Connection getConnection(){
        String url, userName, password;
        
        url = "jdbc:mysql://localhost/proyectoextra";
        userName = "root";
        password = "admin";
        Connection con = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
            System.out.println("Se conecto a la BD");
        }catch(Exception e){
            System.out.println("No se conecto a la BD");
            System.out.println(e.getMessage());
        }
        return con;
    }
    
}