
package Control;

import java.sql.*;


public class Consultas extends Conexion{
    
    public boolean registrar(String nombre, String paterno, String materno, int edad, String correo, String usuario, String contraseña){
        
        PreparedStatement ps = null;
        
        try{
            
            String q = "insert into prueba(nom_usu, appat_usu, apmat_usu, edad_usu, email_usu, user_usu, con_usu) "
                    + "values(?,?,?,?,?,?,?)";
            
            ps = getConnection().prepareStatement(q);
           
            ps.setString(1, nombre);
            ps.setString(2, paterno);
            ps.setString(3, materno);
            ps.setInt(4, edad);
            ps.setString(5, correo);
            ps.setString(6, usuario);
            ps.setString(7, contraseña);
            
            if(ps.executeUpdate() == 1){
                return true;
            }
                   
        }catch(Exception e){
            System.out.println("Error: " + e);
        }finally{
            
            try{
                
                if(getConnection() != null) getConnection().close();
                if(ps != null) ps.close();
                
            }catch (Exception e){
                System.out.println("Error: " + e);
            }
            
        }
        
        return false;
    }

    public boolean autentificacion(String usuario, String contraseña) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            
            String q = "select * from prueba where user_usu = ? and con_usu = ?";
            ps = getConnection().prepareStatement(q);
            ps.setString(1, usuario);
            ps.setString(2, contraseña);
            rs = ps.executeQuery();
            if(rs.absolute(1)){
                return true;
            }
            
        }catch(Exception e){
            System.out.println("Error: " + e);
        }finally{
            try{
                
                if(getConnection() != null) getConnection().close();
                if(ps != null) ps.close();
                if(rs != null) rs.close();
                
            }catch (Exception e){
                System.out.println("Error: " + e);
            }
        }
        
        return false;
    }
    
        
    /*public static void main (String[] args){
        Consultas co = new Consultas();  
        System.out.println(co.autentificacion("DiegoHuntex", "SoyGenial"));        
    }*/
}
