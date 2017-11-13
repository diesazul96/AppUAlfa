<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="listarTiendasAjax.js"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
        <title>Tiendas AppuMart</title>
        <style>
            @media screen and (max-width:560px) {
                #res {
                    width: 70%;
                    margin: auto;
                    float: none;
                }
                #logo{
                    padding-top: 10px;
                    padding-bottom: 20px;
                }
                #tiendas{
                }
            }
            @font-face
            {
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
            }

            * {
                box-sizing: border-box;
                font-family: 'carrito.ttf';
            }

            body {
                /*background-color: #f1f1f1;*/
                /*background-color: #4686a0;*/
                /*background-image: url(Pictures/bg.jpg);*/
                /*background: #1b1f22;*/
                /*background-color: #4686a0;
                color: rgba(255, 255, 255, 0.75);
                background-attachment: fixed,	fixed, fixed;
                background-image: linear-gradient(45deg, #9dc66b 5%, #4fa49a 30%, #4361c2);*/
                background-color: #B4B4B4;  /*Gris*/
                background-image: -moz-radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%);
                background-image: -webkit-radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%);
                background-image: -ms-radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%);
                background-image: radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%); /*Ovalo Mitad*/

                padding: 10px;
            }

            /*body {
                background-color: rgb(147, 93, 140);
                background-image: linear-gradient(45deg, rgb(227, 118, 130) 15%, rgb(95, 77, 147) 85%);

            }*//*Instagram*/

            /* Center website */
            .main {
                max-width: 800px;
                margin: auto;
            }

            h1 {

                word-break: break-all;
                font-family: 'carrito.ttf';
                opacity: 1;
                font-size: 1.75rem;
                line-height: 1.4;
                /*letter-spacing: 0.2rem;*/
                color: #ffffff;
            }

            .row {
                margin: 10px -16px;
            }

            /* Add padding BETWEEN each column */
            .row,
            .row > .column {
                padding: 40px;
            }

            /* Create three equal columns that floats next to each other */
            .column {
                float: left;
                /*margin: auto;*/
                width: 33.33%;
                /*width: 60%;*/
            }

            /* Clear floats after rows */ 
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Content */
            .content {
                border-radius: 5px;
                background-color: white;
                box-shadow: 2px 2px 5px #999;
                padding: 0px;

            }
            .content2 {
                padding: 5px;
            }

            /* The "show" class is added to the filtered elements */
            .show {
                display: block;
            }
            img {
                border-radius: 5px 5px 0 0;
            }

            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: red;
                color: white;
                text-align: center;
            }
            .sticky {
                position: -webkit-sticky;
                position: sticky;
                top: 0px;
                padding: 5px;
                text-align: center;
                /*background-color: #cae8ca;*/ /*Verde Claro*/
                background-color: #087eac;
                /*background-color: #24a0d0;*/ /*Azul Claro*/
                /*background-color: #106383;*/ /*Azul Oscuro*/
                /*border: 2px solid #4CAF50;*/ /*Verde Medio*/
                border: 2px solid #ffffff; /*Blanco*/
                border-radius: 3px;
                opacity: 0.8;
                /*height: 40px;*/
            }
            .vendedor{
                font-size: 10px
            }
            .puntuacion{
                padding-top: 5px;
                color: #298cda;
                /*font-size: 15px*/
            }
            .empresa{
                /*font-size: 25px;*/
                color: black;
                margin-top: 0px;
                margin-bottom: 0px;

            }
            a:link   
            {   
                text-decoration:none;   
            } 
            hr {
                display: block;
                unicode-bidi: isolate;
                -webkit-margin-before: 0.5em;
                -webkit-margin-after: 0.5em;
                -webkit-margin-start: auto;
                -webkit-margin-end: auto;
                overflow: hidden;
                border-style: inset;
                border-width: 1px;
            }
            .footer {
                position: static;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: #087eac;
                border-radius: 15%;
                color: white;
                text-align: center;
                margin-top: 50px;
            }
            #bg {
                background: rgba(19, 21, 25, 0.5);
            }
            
        </style>
        <script>
            jQuery(document).ready(function () {
                jQuery("#loader").fadeOut("slow");
            });
            $(document).ready(function () {
                $(window).scroll(function () {
                    if ($('body').height() <= ($(window).height() + $(window).scrollTop())) {
                        $('#na').show();
                    } else {
                        $('#na').hide();
                    }
                });
            });
        </script>
    </head>
    <body>

        <!-- MAIN (Center website) -->
        <div class="main">
            <center><div id="logo"><img src="Pictures/AppuMartLogo.png" style="width: 30%; height: 30%; margin-top: -45px; margin-bottom: -40px;"></div></center>
            <hr>
            <div id="bandera"><div id="rojo"></div><div id="blanco"></div><div id="azul"></div></div>
            <h1 class="sticky">Nuestras Tiendas</h1>
            <div class="row" id="div">
            </div>
            <p id="na" style="text-align: center;"><i class="fa fa-exclamation-circle"></i> No hay mas tiendas por mostrar <i class="fa fa-exclamation-circle"></i></p>


            <div id="bg"></div>
            <hr style="margin-top: 20px">

            <div class="footer">
                <!--<p>Footer</p>-->
                <img src="Pictures/AppuTexto.png" style="width: 30%; height: 30%; padding-top: 8px;">
            </div>

            <!-- END MAIN -->
        </div>

        <script>
            filterSelection("all")
            function filterSelection(c) {
                var x, i;
                x = document.getElementsByClassName("column");
                if (c == "all")
                    c = "";
                for (i = 0; i < x.length; i++) {
                    QuitarClase(x[i], "show");
                    if (x[i].className.indexOf(c) > -1)
                        AgregarClase(x[i], "show");
                }
            }

            function AgregarClase(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    if (arr1.indexOf(arr2[i]) == -1) {
                        element.className += " " + arr2[i];
                    }
                }
            }

            function QuitarClase(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    while (arr1.indexOf(arr2[i]) > -1) {
                        arr1.splice(arr1.indexOf(arr2[i]), 1);
                    }
                }
                element.className = arr1.join(" ");
            }
        </script>
    </body>
</html>
