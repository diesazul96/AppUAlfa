$(document).ready(function () {


    var opcion = "0";

    $.ajax({
        url: 'MainMenuServlet',
        type: 'GET',
        data: {opcion:opcion},
        dataType: 'json',
        success: function (data) {

            var i = 0;
            for (i = 0; i < data.Productos.length; i++) {
                console.log(data.Productos[i].nombre);
                console.log(data.Productos[i].precio);
                $('#carlos').append(
                        
                        //"<a href = 'seleccionProducto.jsp'><button class='btn' onclick='sendName(" + data.Productos[i].nombre + ")'>\n\"",
                        "<p>" + data.Productos[i].nombre + "</p><p>" + data.Productos[i].cantidad + "</p><p>" + data.Productos[i].precio + "</p><br>",
                        "<form>",
                        "<input type='text' id='opcion' value='2' style='display: none'>",
                        "<input type='text' id='idprod' value='" + data.Productos[i].ID + "' style='display: none'>",
                        "<input type='submit' value='x'>",
                        "</form>"
                        
                        );

            }

//            $('#carlos').append(
//                    "<p>" + data.Productos[data.Productos.length].Total + "</p><br>"
//                    );

        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });


});

      // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.

      function initMap() {
          var map;
          
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 4.714666, lng: -74.072115},
          streetViewControl: false,
          mapTypeControl: false,
          fullscreenControl: false,
          zoom: 15
        });
        var infoWindow = new google.maps.InfoWindow({map: map});
        
        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Tú Ubicación <3');
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: El servicio de geolocalización falló.' :
                              'Error: Tu explorador no soporta la geolocalización.');
      }
      
      function main(){
    var opcion = "1";
    console.log("Entro a funcion main");
    
    $.ajax({
                        url: 'MainMenuServlet',
                        type: 'GET',
                        data: {opcion:opcion},
                        dataType: 'json',
                        success: function(data){
                            
//                            var i = 0;
//            for (i = 0; i < data.Productos.length; i++) {
//                console.log(data.Productos[i].nombre);
//                console.log(data.Productos[i].precio);
//                $('#carlos').append(
//                        
//                        
//                        //"<a href = 'seleccionProducto.jsp'><button class='btn' onclick='sendName(" + data.Productos[i].nombre + ")'>\n\"",
//                        "<p>" + data.Productos[i].nombre + "</p><p>" + data.Productos[i].cantidad + "</p><p>" + data.Productos[i].precio + "</p><br>",
//                        "<form>",
//                        "<input type='text' id='opcion' value='2' style='display: none'>",
//                        "<input type='text' id='idprod' value='" + data.Productos[i].ID + "' style='display: none'>",
//                        "<input type='submit'>",
//                        "</form>"
//                        
//                        );
//
//            }
                           // $("#respuesta").append("<b>Se agregó el producto </b>"+data.nombre+" <b>satisfactoriamente</b>");
                        }
                    });
                    
                    location = 'InfoCarrito.jsp';
}
       
       
       
