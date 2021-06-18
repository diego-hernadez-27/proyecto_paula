/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
window.addEventListener('load', function(){
   document.getElementById('btniniciar').addEventListener('click', function(){
      var usuario = document.getElementById('txtusuario').value;
      var contraseña = document.getElementById('txtpass').value;
     
      
      var bandera = false;
      
      if(usuario.length > 0 && contraseña.length > 0){
          bandera = true;
      }
      
      if(bandera){
          document.getElementById('forminicio').submit();
      }else{
          alert('Por favor rellene todos los campos');
      }
   });
});

window.addEventListener('load', function(){
    document.getElementById('btnregistrar').addEventListener('click', function(){
      var usuario = document.getElementById('txtusuario').value;
      var contraseña = document.getElementById('txtpass').value;
      var nombre = document.getElementById('txtnombre').value;
      var apellido = document.getElementById('txtapellido').value;
      var correo = document.getElementById('txtcorreo').value;
      var edad = document.getElementById('txtedad').value;
     
      
      var bandera = false;
      
      if(usuario.length > 0 && contraseña.length > 0 && nombre.length > 0 && apellido.length > 0 && correo.length > 0 && edad.length > 0){
          bandera = true;
      }
      
      if(bandera){
          document.getElementById('formregistrar').submit();
      }else{
          alert('Por favor rellene todos los campos');
      }
      
   });
});
