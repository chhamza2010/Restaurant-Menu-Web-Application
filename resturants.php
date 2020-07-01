
<!doctype html>

<html>
  <head>
    <title>Resturant Portal</title>
    <meta charset="utf-8">
    <meta name="description" content="travel, trip, store, shopping, siteweb, cart">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,700,600,300' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Lora:400,400italic,700,700italic' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>


        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" type="text/css" />
        <link href="css/animate.css" rel="stylesheet" type="text/css" />
        <link href="css/slider.css" rel="stylesheet" type="text/css" />
        <link href="css/travel-mega-menu.css" rel="stylesheet" type="text/css" />
        <link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
        <link href="css/example.css" rel="stylesheet" type="text/css" />
        <link href="css/layout2.css" rel="stylesheet" type="text/css" />
        <style type="text/css">.weatherForecast{display:none;} .weatherFeed{margin:5px 10px;}</style>
        <link href="css/responsive.css" rel="stylesheet" type="text/css" />

        <style> 
          input[type=text] {
              width: 130px;
              box-sizing: border-box;
              border: 2px solid #ccc;
              border-radius: 4px;
              font-size: 16px;
              background-color: white;
              background-image: url('searchicon.png');
              background-position: 10px 10px; 
              background-repeat: no-repeat;
              padding: 12px 20px 12px 40px;
              -webkit-transition: width 0.4s ease-in-out;
              transition: width 0.4s ease-in-out;
          }

          input[type=text]:focus {
              width: 90%;
          }
</style>
  </head>
  <body>
    <div id="loader-wrapper">
        <div id="loader"></div>
    </div>
  <section>
      <div class="top-mega-menu">
        <div class="container">
        <!-- mega menu -->
      <ul class="travel-mega-menu travel-mega-menu-anim-scale travel-mega-menu-response-to-icons">    
                <li class="line-logo">
                 <a class="logo" href="#" style="width: 139px;"><img src="images/logo.jpg" alt=""/></a>
                </li> 
                <li style="width: 80%;">
                    <a href="http://localhost:8090">Home</a>
                </li> 
      </ul>
      <!--/ mega menu -->
        </div>
          
          <nav id="mobile-menu-01" class="mobile-menu">
                <div class="line-logo">
              <a class="logo" href="#"><img src="images/logo.jpg" alt=""/></a><i class="fa fa-bars"></i>
            </div>  
                <div class="clear"></div>
      <!--/ mega menu -->
          </nav>
        </div>
    </section>
<!-- TOP OFFERTS -->

<section id="top-offerts" class='home4-section'>
  <div class="container">
        <div class="row">
          <div class="col-md-12 effect-5 effects no-border-img">
                <div class="text-center">
                    <h2>Resturants</h2>
                    <div class="separator">
                      <div class="separator-style"></div>
                    </div>
                    <p></p>
          </div> 
          <div id='disher-box'>
          <?php 
            $resturants = file_get_contents('http://localhost/api.php/resturant');
            $resturants = json_decode($resturants, true);
            foreach ($resturants['resturant']['records'] as $rest) {
          ?>
                 <div id="item-box-<?php echo $menu[0]?>" class="four-col col-md-6 view view-fifth">
                      <div class="mask">
                          <div class="main">
                            <div class="trip-title"><h3><?php echo $rest[1]?></h3><br /><p></p></div>
                          </div>
                          <div class="content">
                            <p><?php echo $rest[3]?></p>
                              <!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> -->
                              <a href="#" class="help-btn delete-item">website : <?php echo $rest[4]?></a>
                              <a href="#" style="float: right" class="help-btn similar-item">Phone: <?php echo $rest[2]?></a>
                          </div>
                      </div>
                  </div>
          <?php   
            }
          ?>
            </div>
            </div><!--Close col 12 -->
        </div>
    </div>
</section>   

<script src="js/modernizr.js" type="text/javascript"></script>
<script src="js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js"></script>
<!-- waypoint -->
<script type="text/javascript" src="js/waypoints.min.js"></script>
<!--Preload-->
<script type="text/javascript">
    $(document).ready(function ($) {
        "use strict";
        try {
            var myTimer = 0; clearTimeout(myTimer);
            myTimer = setTimeout(function () { $("#loader-wrapper").slideUp() }, 2000);
        } catch (err) {
        }
    });
</script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
  </body>
</html>
