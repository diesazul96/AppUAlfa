/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function prueba(){
    var cars = ["Saab", "Volvo", "BMW", "Lambo", "Chevrolet", "Renault", "Maseratti", "Mazda", "Pagani", "Ford"];
    var tam = cars.length;
    var rows = parseInt(tam/3)+1;
    
    console.log("ROOOOWWSS "+rows);
    console.log( $('.container-fluid'));
    
    for (var i = 0; i < rows; i++) {
        $("#containerP").append(
                "<div class='row' id='r"+i+"'></div>"
                );
    }
    console.log("METER ELEMENTOS");
    var cont = 0;
    var init = 0;
    var i = 0;
    var j = 0;
    var esq = 0;
    while(i < rows){
        console.log("I "+i);
        while(j<tam){
            console.log("J "+j);
            if(cont<3){
                if(cont===0){esq=j;}
                console.log("ESQ "+esq);
                console.log("CONT "+cont);
                $("#r"+i).append(
                        "<div class='col-sm-4'>"+"<p>"+cars[j].valueOf()+"</p>"+"</div>"
                        );
                cont++;
            }
            if((j>0 && j===(esq+2)) || j===(tam-1)){break;}
            j++;
        }
        cont = 0;
        j++;
        i++;
    }
}

$(document).ready(function () {


//    $.ajax({
//        url: 'ListarTiendasServlet',
//        type: 'get',
//        dataType: 'json',
//        success: function (data) {
//
//            for (var i = 0; i < data.tiendas.length; i++) {
//                console.log(data.tiendas[i].idfondo);
//                console.log(data.tiendas[i].nombre);
//                $('#div').append(
//                        "<a><button class='btn' onclick='sendName(" + data.tiendas[i].id + ")'>\n\
//                         <img src=" + data.tiendas[i].idfondo + " width='100' height='100'></button></a><br>",
//                        "<a>" + data.tiendas[i].nombre + "</a><br>",
//                        "<a>Vendedor: " + data.tiendas[i].vendedor + "</a><br>",
//                        "<a>Puntuación: " + data.tiendas[i].puntuacion + "</a><br>"
//
//                        );
//            }
//        },
//        error: function () {
//        }
//    });
});
function sendName(idTienda) {



    console.log("Entreeee a la funcioooooon con id:  " + idTienda);

    $.ajax({
        url: 'SeleccionTiendaServlet',
        type: 'get',
        data: {nombre: idTienda},
        dataType: 'json',
        success: function (data) {
            console.log("Nombresito de tienda enviado");
            window.location.href = "seleccionProducto.jsp";

        },
        error: function () {
        }
    });



}
