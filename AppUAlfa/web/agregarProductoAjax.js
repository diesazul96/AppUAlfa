/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function (){
    $("#boton").click(function (){
        var nombre = $("#nombre").val();
        var categoria = $("#categoria").val();
        var precio = $("#precio").val();
        var cantidad = $("#cantidad").val();
        var tienda = $('#tienda').val();
        
        $.ajax({
            url: 'AgregarProductoServlet',
            type: 'POST',
            data: {nombre:nombre, categoria:categoria, precio:precio, cantidad:cantidad,tienda:tienda},
            dataType: 'json',
            success: function(data){
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Se agregó el producto "+nombre+" satisfactoriamente";

                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Datos incorrecto";
                }
            }
                
                
            
        });
    });
});



