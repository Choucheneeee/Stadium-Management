<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Gestion terrain</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
 

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="Static/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

  <!-- Libraries CSS Files -->
  <link href="Static/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="Static/lib/animate/animate.min.css" rel="stylesheet">
  <link href="Static/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="Static/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="Static/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="Static/css/style_index.css" rel="stylesheet">
</head>

<body>

  <!--==========================
  Header
  ============================-->
  <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <h1 class="text-light"><a href="#header"><span>NewBiz</span></a></h1> -->
        <a href="#intro" class="scrollto"><img src="Static/images/Capture.JPG" alt="" class="img-fluid" ></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="#intro">Accueil</a></li>
          <li><a href="#about">Services</a></li>
          <li><a href="#contact">Contactez-nous</a></li>
		    <li><a href="Register">S'inscrire</a></li>
		    <li><a href="Login">Se connecter</a></li>
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro" class="clearfix">
    <div class="container">

  <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
  <div class="carousel-item">
	  <img class="d-block w-100" src="https://3s-tech.lu/wp-content/uploads/2018/03/Football-Terrain-113-von-165.jpg" alt="Third slide">
	  <div class="carousel-caption d-none d-md-block">
    <h5>Football</h5>
    <p>Le sport le plus populaire au monde</p>
  </div>
    </div>
    <div class="carousel-item active ">
      <img class="d-block w-100" src="https://d3pnpe87i1fkwu.cloudfront.net/wp-content/uploads/2017/03/In-ground.jpg" alt="First slide">
    
     <div class="carousel-caption d-none d-md-block">
    <h5>Basketball</h5>
    <p>Le sport le plus populaire en Am�rique</p>
  </div>
  </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://www.wallpapersdsc.net/wp-content/uploads/2017/02/Volleyball-Widescreen-.jpg" alt="Second slide">
   
	<div class="carousel-caption d-none d-md-block">
    <h5>Volley</h5>
    <p>Le sport le plus coll�gial</p>
  </div>
  </div>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    </div>
  </section><!-- #intro -->

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about">
      <div class="container">

        <header class="section-header">
          <h3>Services</h3>
          <p>voici quelques informations concernant la gestion des r�servations des terrains.</p>
        </header>

        <div class="row about-container">

          <div class="col-lg-6 content order-lg-1 order-2" style="margin-top: 30px;">
           
            <div class="icon-box wow fadeInUp">
              <div class="icon"><i class="fa fa-calendar "></i></div>
              <h4 class="title"><a href="">Horaire d'ouverture</a></h4>
              <p class="description">Le terrain de football est ouvert 7 jours sur 7, 12 heures sur 24 de 9 heures � 21 heures.</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <div class="icon"><i class="fa fa-book"></i></div>
              <h4 class="title"><a href="">Instructions et r�glements</a></h4>
              <p class="description">Deux �quipes de 5 personnes au moins dont chaque �quipe doivent �tre pr�sentes avant l'heure de 10 minutes , Le personne qu'a effectuer la r�servation doit dispose d'une pi�ce d'identit�</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="">Dimension de terrain </a></h4>
              <p class="description"> Le terrain de football a une longueur de 90 m�tres, et une largeur de 45 m�tres.</p>
            </div>

          </div>

          <div class="col-lg-6 background order-lg-2 order-1 wow fadeInUp" >
            <img src="https://3s-tech.lu/wp-content/uploads/2018/03/Football-Terrain-113-von-165.jpg" class="img-fluid" alt="" style="height:350px; width:100%; padding-bottom: 30px;" >
          </div>
        </div>

        <div class="row about-extra">
          <div class="col-lg-6 wow fadeInUp">
            <img src="https://d3pnpe87i1fkwu.cloudfront.net/wp-content/uploads/2017/03/In-ground.jpg" class="img-fluid" style="height:300px; width:100%; padding-bottom: 30px;">
          </div>
          <div class="col-lg-6 content order-lg-1 order-2">
            
			
			
	     <div class="row about-container">

          <div class="col-lg-12 content order-lg-1 order-2" style="margin-top: 30px;">
            <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <div class="icon"><i class="fa fa-book"></i></div>
              <h4 class="title"><a href="">Instructions et r�glements</a></h4>
              <p class="description">Deux �quipes de 4 personnes au moins dont chaque �quipe doivent �tre pr�sentes avant l'heure de 10 minutes , Le personne qu'a effectuer la r�servation doit dispose d'une pi�ce d'identit�</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="">Dimension de terrain </a></h4>
              <p class="description"> Le terrain de Basketball a une longueur de 28 m�tres, et une largeur de 15 m�tres.</p>
            </div>
          </div>
        </div>
        </div>
        </div>

        <div class="row about-container">
          

         <div class="col-lg-6 content order-lg-1 order-2" style="margin-top: 30px;">
           
            <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <div class="icon"><i class="fa fa-book"></i></div>
              <h4 class="title"><a href="">Instructions et r�glements</a></h4>
              <p class="description">Deux �quipes de 6 personnes au moins dont chaque �quipe doivent �tre pr�sentes avant l'heure de 10 minutes , Le personne qu'a effectuer la r�servation doit dispose d'une pi�ce d'identit�</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="">Dimension de terrain </a></h4>
              <p class="description"> Le terrain de Vol� a une longueur de 18 m�tres, et une largeur de 9 m�tres.</p>
            </div>

          </div>
            
			<div class="col-lg-6 wow fadeInUp order-1 order-lg-2">
            <img src="https://www.wallpapersdsc.net/wp-content/uploads/2017/02/Volleyball-Widescreen-.jpg" class="img-fluid" style="height:300px; width:100%; padding-bottom: 30px;" >
          </div>
          
        </div>

      </div>
    </section><!-- #about -->

   

    
    <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container-fluid">

        <div class="section-header">
          <h3>Contactez-nous</h3>
        </div>

        <div class="row wow fadeInUp">

          <div class="col-lg-6">
            <div class="map mb-4 mb-lg-0">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3308.3198919990796!2d-6.869790585446563!3d33.98431622875541!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda76ce7f9462dd1%3A0x2e9c39cfa1d9e8d7!2sNational%20school%20For%20Computer%20Science!5e0!3m2!1sen!2sma!4v1613415769467!5m2!1sen!2sma"  frameborder="0" style="border:0; width: 100%; height: 312px;" allowfullscreen></iframe>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="row">
              <div class="col-md-5 info">
                <i class="ion-ios-location-outline"></i>
                <p>Avenue Mohamed Ben Abdellah Regragui, Rabat</p>
              </div>
              <div class="col-md-4 info">
                <i class="ion-ios-email-outline"></i>
                <p>Ensias@gmail.com</p>
              </div>
              <div class="col-md-3 info">
                <i class="ion-ios-telephone-outline"></i>
                <p>+212537778579</p>
              </div>
            </div>

            <div class="form">
              <div id="sendmessage">Votre message a �t� envoy�. Merci!</div>
              <div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                <div class="form-row">
                  <div class="form-group col-lg-6">
                    <input type="text" name="name" class="form-control" id="name" placeholder="votre nom" data-rule="minlen:4" data-msg="Veuillez saisir au moins 4 caract�res" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-6">
                    <input type="email" class="form-control" name="email" id="email" placeholder="votre email" data-rule="email" data-msg="veuillez entrer un email valide" />
                    <div class="validation"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Veuillez saisir au moins 8 caract�res de sujet" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="S'il vous pla�t �crivez quelque chose pour nous" placeholder="Message"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit" title="Send Message">Envoyer le message</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->

  </main>

  
<footer id="footer">
   


    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>ENSIASTES</strong>. All Rights Reserved
      </div>
     
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="Static/lib/jquery/jquery.min.js"></script>
  <script src="Static/lib/jquery/jquery-migrate.min.js"></script>
  <script src="Static/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="Static/lib/easing/easing.min.js"></script>
  <script src="Static/lib/mobile-nav/mobile-nav.js"></script>
  <script src="Static/lib/wow/wow.min.js"></script>
  <script src="Static/lib/waypoints/waypoints.min.js"></script>
  <script src="Static/lib/counterup/counterup.min.js"></script>
  <script src="Static/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="Static/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="Static/lib/lightbox/js/lightbox.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="Static/js/contactform_index.js"></script>

  <!-- Template Main Javascript File -->
  <script src="Static/js/main_index.js"></script>

</body>
</html>
