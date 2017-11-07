<!DOCTYPE html>
<html>
    <head>
        <style>
            @import url(https://fonts.googleapis.com/css?family=Open+Sans);
            .container {
                /*width: 200px;
                height: 200px;*/
                position: relative;
                left: 0;
                right: 0;
                margin: 0 auto;
                top: 20px;
                z-index: 2000;
            }
            .div-img {
                display: block;
                margin-left: auto;
                margin-right: auto;
            }
            .div-img.hidden {
                overflow: hidden;
            }
            .div-img .img {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 100%;
                
                transform: translate(0px, 0px);
                -ms-transform: translate(0px, 0px);
                -moz-transform: translate(0px, 0px);
                -webkit-transform: translate(0px, 0px);
                -o-transform: translate(0px, 0px);
                -webkit-transition: all 500ms ease-in-out;
                -moz-transition: all 500ms ease-in-out;
                -ms-transition: all 500ms ease-in-out;
                -o-transition: all 500ms ease-in-out;
            }
            .div-img .text {
                position: relative;
                z-index: -1;
                display: block;
                bottom: 50px;
                width: 100%;
                text-align: center;
                color: black;
            }
            .div-img:hover .img {
                transform: translate(0px, -100px);
                -ms-transform: translate(0px, -100px);
                -moz-transform: translate(0px, -100px);
                -webkit-transform: translate(0px, -100px);
                -o-transform: translate(0px, -100px);
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
        </style>
    </head>
    <body>
        <div class="footer">
            <div class="container">
                <div class="div-img hidden" >
                    <a href="listarTiendas.jsp"><img src="Pictures/AppuTexto.png" class="img" style="width: 30%; height: 30%; padding-top: 8px;"></a>
                        <div class="text">What's up?</div>
                </div>
            </div>
        </div>
    </body>
</html>
