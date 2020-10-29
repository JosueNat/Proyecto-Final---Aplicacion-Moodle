
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Student Virtual Classrooom</title>
    <link rel="icon" type="img/png" href="img_sistema/lorito.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!--Estilo CSS-->
    <link rel="stylesheet" href="sistema.css">
    <!--Fonts a utilizar-->
    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300;400;600&display=swap" rel="stylesheet">
    <!--Icononos-->
    <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
    <script src="https://kit.fontawesome.com/a84570cddf.js" crossorigin="anonymous"></script>
    <script src="sistema.js"></script>
</head>

<body>

    <!--Barra de navegación-->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#hero"><img src="img_sistema/tux.svg" alt="Student Virtual Classroom" class="img-brand"> SVC Plataforma </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <ion-icon name="menu-outline"></ion-icon>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#hero" id="home">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#proyecto" id="portfolio">Futuros proyectos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contacto" id="aboutus">Acerca de nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#footer" id="contact">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--Seccion-->
    <section id="hero">
        <div class="container">
            <div class="content-center topmargin-lg">
                <h1>PLATAFORMA DE EDUACIÓN VIRTUAL PARA ESTUDIANTES DE LA UG</h1>
                <p>Este campus ha sido creado con la finalidad de que aquellos estudiantes que deseen seguir avanzando en su educacion no se detengan en su camino ya que en este año el Covid-19 nos afectó a todos
                </p>
                <a href="System_School/System_School/index.php" class="btn btn-light topmargin-st">INGRESAR <ion-icon name="arrow-forward-circle-outline"></ion-icon></a>
            </div>
        </div>
    </section>
    <!--Seccion fin-->
    <!--Seccion PROYECTOS-->
    <section id="proyecto">
        <div class="container-fluid">
            <div class="content-center1">
                <h2>Estamos emocionados de que conozcas <b> nuestros futuros proyectos</b></h2>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Numquam iste illum, dicta, libero nobis aperiam magnam harum eaque autem nemo commodi! Culpa, quisquam accusantium cum atque similique nam impedit ullam?</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <div class="portfolio-container">
                    <div class="portfolio-details">
                        <a href="#">
                            <h2>Hacking ético y Metasploit</h2>
                        </a>
                        <a href="#">
                            <p>Manejo de técnicas y métodos para llegar a ser pentester</p>
                        </a>
                    </div>
                    <img src="img_sistema/cyber-security.jpg" class="img-fluid" alt="portfolio">
                </div>
            </div>

            <div class="col-md-6">
                <div class="portfolio-container">
                    <div class="portfolio-details">
                        <a href="#">
                            <h2>Sistema Medico</h2>
                        </a>
                        <a href="#">
                            <p>Desarrollo de aplicacion web adaptable a cualquier dispositivo </p>
                        </a>
                    </div>
                    <img src="img_sistema/scientist.jpg" class="img-fluid" alt="portfolio">
                </div>
            </div>

            <div class="col-md-6">
                <div class="portfolio-container">
                    <div class="portfolio-details">
                        <a href="#">
                            <h2>Swift & Kotlin</h2>
                        </a>
                        <a href="#">
                            <p>Descubra y maneje todos los secretos de este lenguaje</p>
                        </a>
                    </div>
                    <img src="img_sistema/apple.jpg" class="img-fluid" alt="portfolio">
                </div>
            </div>

            <div class="col-md-6">
                <div class="portfolio-container">
                    <div class="portfolio-details">
                        <a href="#">
                            <h2>Redes</h2>
                        </a>
                        <a href="#">
                            <p>Manejo de técnicas y métodos de cableado con excelente impresion</p>
                        </a>
                    </div>
                    <img src="img_sistema/electric-cables.jpg" class="img-fluid" alt="portfolio">
                </div>
            </div>
        </div>
        <div class="text-center topmargin-st">
            <p>¿Listo para aprender?</p>
            <a href="#" class="text-dark"> Unete a este maravilloso mundo</a>
        </div>
    </section>
    <!--Seccion PROYECTOS fin-->
    <section id="contacto">
        <div class="container">
            <div class="row">
                <div class="col-md-6 topmargin-st">
                    <h3>Deseas conocer más sobre nosotros?</h3>
                    <p>La Universidad de Guayaquil es generar, difundir y preservar conocimientos científicos, tecnológicos humanísticos y saberes culturales de forma critica, creativa y para la Innovación social, a través de las funciones de formación,
                        Investigación y vinculación con la sociedad, fortaleciendo profesional y éticamente el talento de la nación y la promoción del buen vivir, en el marco de la sustentabilidad, la justicia y la paz.</p>
                </div>
                    <div class="col-md-6 topmargin-st">
                    <form action="php_sistema/solicitud.php" method="post" >
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input id="nombres" name="nombres" class="form-control" type="text" placeholder="Nombre">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input id="apellidos" name="apellidos" class="form-control" type="text" placeholder="Apellido">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input id="email" name="correo" class="form-control" type="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input id="empresa" name="empresa" class="form-control" type="text" placeholder="Nombre de la empresa o cédula">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input id="telefono" name="telefono" class="form-control" type="text" placeholder="Telefono de contacto">
                            </div>
                        </div>
                        <div class="col-md-12">
                           <input type="submit" class="btn btn-dark full-width" name="guardar" onclick="return validar();" placeholder="Contactar" >
                            
                        </div>
                    </div>
                     </form>
                </div>
                    
            </div>
        </div>
    </section>

    <!--Section footer-->
    <section id="footer" class="bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="img_sistema/lorito.png" alt="Logo" class="img-brand"> SVC Plataforma </a>
            <ul class="list-inline">
                <li class="list-inline-item footer-menu"><a href="https://www.facebook.com/UdeGuayaquil">Facebook</a></li>
                <li class="list-inline-item footer-menu"><a href="https://www.instagram.com/universidad_guayaquil/">Instagram</a></li>
                <li class="list-inline-item footer-menu"><a href="https://twitter.com/UdeGuayaquil">Twitter</a></li>
                <li class="list-inline-item footer-menu"><a href="http://www.ug.edu.ec/">Contacto UG</a></li>
            </ul>
            <ul class="list-inline">
                <li class="list-inline-item">
                    <a href="https://www.facebook.com/UdeGuayaquil" class="icono">
                        <i class="fab fa-facebook"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a href="https://www.instagram.com/universidad_guayaquil/" class="icono">
                        <i class="fab fa-instagram"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a href="https://twitter.com/UdeGuayaquil" class="icono">
                        <i class="fab fa-twitter-square"></i>
                    </a>
                </li>
                <li class="list-inline-item">
                    <a href="http://www.ug.edu.ec/" class="icono">
                        <i class="fas fa-university"></i>
                    </a>
                </li>
            </ul>
            <address>Universidad de Guayaquil
                Cdla. Universitaria
                Av. Delta y Av. Kennedy
                (04) 2391004</address>
            <small><i class="far fa-copyright"></i> Todos los derechos reservados 2020</small><br>
            <small>Creada por: Grupo Venecia || Curso:6-4 </small>
        </div>
    </section>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>