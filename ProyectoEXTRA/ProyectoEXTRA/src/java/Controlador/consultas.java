/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.mousuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author alesj
 */
public class consultas extends conexion{
    public boolean autenticacion(String usuario, String contraseña){
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            String consulta = "Select * from usuarios where usuario = ? and contraseña = ?";
            
            ps = getConnection().prepareStatement(consulta);
            ps.setString(1, usuario);
            ps.setString(2, contraseña);
            rs = ps.executeQuery();
            
            if(rs.absolute(1)){
                return true;
                
            }
        } catch(SQLException e){
            System.out.println("Error"+ e);
            
        }finally{
            try{
            if(getConnection() != null) getConnection().close();
            if(ps != null) ps.close();
            if(rs != null) rs.close();
            }catch(Exception e){
            System.out.println("Error"+ e);
            }
            }
        
        
        
        return false;
    }
    public boolean registrar(String nombre, String apellido, String edad, String contraseña, String usuario, String correo){
        PreparedStatement ps = null;
        
        
        try{
            String consulta = "Insert into usuarios(nombre, apellido, edad, contraseña, usuario, correo) values(?,?,?,?,?,?)"; 
            ps = getConnection().prepareStatement(consulta);
            ps.setString(1, nombre);
            ps.setString(2, apellido);
            ps.setString(3, edad);
            ps.setString(4, contraseña);
            ps.setString(5, usuario);
            ps.setString(6, correo);
            
            if(ps.executeUpdate() == 1 ){
                return true;
                
            }
        
        }catch(SQLException e){
            System.out.println("Error: " + e);
        }finally{
            try{
            if(getConnection() != null) getConnection().close();
            if(ps != null) ps.close();
            
            
            }catch(SQLException e){
                System.out.println("Error: " + e);
            }
                
            }
             return false; 
        
    }
    
    
    public static mousuario buscar(String usu){
        mousuario e = new mousuario();
        try{
            Connection con = conexion.getConnection();
            String q = "select * from usuarios where usuario = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, usu);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setApellido(rs.getString(3));
                e.setEdad(rs.getInt(4));
                e.setContraseña(rs.getString(5));
                e.setUsuario(rs.getString(6));
                e.setCorreo(rs.getString(7));
                
            }
            System.out.println("Se encontro al usuario");
            con.close();
        }catch(Exception ed){
            System.out.println("Error al buscar al usuario");
            System.out.println(ed.getMessage());
        }
        return e;
        
    }
    
    
    /*public static void main(String[] args){
        
        System.out.println(registrar("Diego", "Alberto", "15", "superstar", "gatitio","hola@hola.com"));
        
    }*/
}
