
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
                  <form>
                    <select id="filter-by" name="filter-by" style="
                        width: 210px;
                        box-sizing: border-box;
                        border: 2px solid #ccc;
                        border-radius: 8px;
                        font-size: 22px;
                        background-color: white;
                        background-image: url('searchicon.png');
                        background-position: 17px 18px;
                        background-repeat: no-repeat;
                        padding: 14px 12px 22px 12px;
                        -webkit-transition: width 0.4s ease-in-out;
                        transition: width 0.4s ease-in-out;
                    ">
                        <option value="name">Name</option>
                        <option value="content">Ingredient</option>
                    </select>
                    <input id="search-box-input" type="text" name="search" placeholder="Search..">
                  </form>
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
        <div class="row" style="margin: 18px 24px;">
          <select id="select-resturant" name="resturant-select" style="
                        width: 210px;
                        box-sizing: border-box;
                        border: 2px solid #ccc;
                        border-radius: 8px;
                        font-size: 22px;
                        background-color: white;
                        background-image: url('searchicon.png');
                        background-position: 17px 18px;
                        background-repeat: no-repeat;
                        padding: 14px 12px 22px 12px;
                        -webkit-transition: width 0.4s ease-in-out;
                        transition: width 0.4s ease-in-out;
                    ">
                        <option value="all">All Restaurant</option>
                        <option value="1 ">Andazz</option>
                        <option value="2">PizzaHut</option>
                        <option value="3">Saltnpepper</option>
                    </select>
          <select id="menu-type" name="menu-type" style="
                        width: 210px;
                        box-sizing: border-box;
                        border: 2px solid #ccc;
                        border-radius: 8px;
                        font-size: 22px;
                        background-color: white;
                        background-image: url('searchicon.png');
                        background-position: 17px 18px;
                        background-repeat: no-repeat;
                        padding: 14px 12px 22px 12px;
                        -webkit-transition: width 0.4s ease-in-out;
                        transition: width 0.4s ease-in-out;
                    ">
                      <option value="all">All Types</option>
                      <option value="pizza">Pizza</option>
                      <option value="starters">Starters</option>
                      <option value="desserts">Desserts</option>
                      <option value="soups">Soups</option>
                      <option value="fries feast">Fries Feast</option>
                      <option value="sandwiches">Sandwiches</option>
                      <option value="steaks">Steaks</option>
                      <option value="fish">Fish</option>
                      <option value="deals">Deals</option>
                    </select>
            <select id="sort-by" name="sort-by" style="
                        width: 210px;
                        box-sizing: border-box;
                        border: 2px solid #ccc;
                        border-radius: 8px;
                        font-size: 22px;
                        background-color: white;
                        background-image: url('searchicon.png');
                        background-position: 17px 18px;
                        background-repeat: no-repeat;
                        padding: 14px 12px 22px 12px;
                        -webkit-transition: width 0.4s ease-in-out;
                        transition: width 0.4s ease-in-out;
                    ">
                      <option value="asc">Asc</option>
                      <option value="desc">Desc</option>
                    </select>
          <a id="truncate-table" href="#" style="border: 12px solid black;background-color: black;border-radius: 12px;">Delete Menu</a>
          <a id="run-crawler" href="#"  style="border: 12px solid black;background-color: black;border-radius: 12px;">Update Menu</a>
        </div>
      	<div class="row">
         	<div class="col-md-12 effect-5 effects no-border-img">
               	<div class="text-center">
                    <h2>Dishes</h2>
                    <div class="separator">
                    	<div class="separator-style"></div>
                    </div>
                    <p></p>
     			</div> 
          <div id='disher-box'>
     			<?php 
     				$menus = file_get_contents('http://localhost/api.php/menu?order=price,asc');
            //echo $menus;
     				$menus = json_decode($menus, true);
     				foreach ($menus['menu']['records'] as $menu) {
              $resturant = file_get_contents('http://localhost/api.php/resturant/'.$menu[5]);
              $resturant = json_decode($resturant, true);
     			?>
     				     <div id="item-box-<?php echo $menu[0]?>" class="four-col col-md-3 view view-fifth">
	                    <div class="mask">
	                        <div class="main">
	                        	<div class="trip-title"><h3><?php echo $menu[1]?></h3><br /><p><?php echo $resturant['name']?></p></div>
	                        	<div class="price"><p>Price</p>Rs <?php echo $menu[4]?></div>
	                        </div>
	                       	<div class="content">
	                        	<p><?php echo $menu[2]?></p>
	                          	<!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> -->
	                          	<a href="#" item-id="<?php echo $menu[0]?>" class="help-btn delete-item">Delete</a>
                              <a href="#" item-id="<?php echo $menu[0]?>" item-name="<?php echo $menu[1]?>" style="float: right" class="help-btn similar-item">Similar</a>
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

        $('.delete-item').on('click',function(){
            var id = $(this).attr('item-id');
            $.ajax({
            url: 'http://localhost:8090/api.php/menu/'+id,
            type: 'DELETE',
            success: function(result) {
                //location.reload();
                $('#item-box-'+id).remove();
            }
          });
        });

        $('#truncate-table').on('click',function(e){
          e.preventDefault();
          var url = 'http://localhost:8090/truncateit.php';
          $.ajax({
              url: url,
              type: 'GET',
              success: function(result) {
                $("#disher-box").empty();
              }
          });
        });

        $('#run-crawler').on('click',function(e){
          e.preventDefault();
          var url = 'http://localhost:8090/api.php/menu?filter=menu.resturant_id,bt,1,3';
          $.ajax({
              url: 'http://localhost:8090/crawler.php',
              type: 'GET',
              success: function(result) {
                $.ajax({
                  url: url,
                  type: 'GET',
                  success: function(result) {
                      //location.reload();
                      $("#disher-box").empty();
                      $.each(result['menu']['records'], function( index, value ) {
                        $("#disher-box").append('<div id="item-box-'+value[0]+'" class="four-col col-md-3 view view-fifth"> \
                            <div class="mask"> \
                                <div class="main"> \
                                  <div class="trip-title"><h3>'+value[1]+'</h3><br /><p></p></div> \
                                  <div class="price"><p>Price</p>Rs '+value[4]+'</div> \
                                </div> \
                                <div class="content"> \
                                  <p>'+value[2]+'</p> \
                                    <!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> --> \
                                    <a href="#" item-id="'+value[0]+'" class="help-btn delete-item">Delete</a> \
                                    <a href="#" item-id="'+value[0]+'" item-name="'+value[1]+'" style="float: right" class="help-btn similar-item">Similar</a> \
                                </div> \
                            </div> \
                        </div>');
                      });
                  }
                });
              }
            });
        });

        $('.similar-item').on('click',function(event){    
          event.preventDefault();
          var value = $(this).attr('item-name');
          var url = 'http://localhost:8090/api.php/menu?filter=name,cs,'+value;
          $.ajax({
            url: url,
            type: 'GET',
            success: function(result) {
              $("#disher-box").empty();
              $.each(result['menu']['records'], function( index, value ) {
                $("#disher-box").append('<div id="item-box-'+value[0]+'" class="four-col col-md-3 view view-fifth"> \
                  <div class="mask"> \
                  <div class="main"> \
                  <div class="trip-title"><h3>'+value[1]+'</h3><br /><p></p></div> \
                  <div class="price"><p>Price</p>Rs '+value[4]+'</div> \
                  </div> \
                  <div class="content"> \
                  <p>'+value[2]+'</p> \
                  <!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> --> \
                  <a href="#" item-id="'+value[0]+'" class="help-btn delete-item">Delete</a> \
                  <a href="#" item-id="'+value[0]+'" item-name="'+value[1]+'" style="float: right" class="help-btn similar-item">Similar</a> \
                  </div> \
                  </div> \
                  </div>');
              });
            }
          });
        });

        $('#search-box-input').keydown(function(event){    
            if(event.keyCode==13){
              event.preventDefault();
              var filter_by = $("#filter-by").val();
              var value = $(this).val();
              var url = '';
              if(filter_by == 'name'){
                  url = 'http://localhost:8090/api.php/menu?filter=name,cs,'+value;
              }else if(filter_by == 'content'){
                  url = 'http://localhost:8090/api.php/menu?filter=desc,cs,'+value;
              }
               url = url;
               $.ajax({
                url: url,
                type: 'GET',
                success: function(result) {
                    //location.reload();
                    $("#disher-box").empty();
                    $.each(result['menu']['records'], function( index, value ) {
                      $("#disher-box").append('<div id="item-box-'+value[0]+'" class="four-col col-md-3 view view-fifth"> \
                          <div class="mask"> \
                              <div class="main"> \
                                <div class="trip-title"><h3>'+value[1]+'</h3><br /><p></p></div> \
                                <div class="price"><p>Price</p>Rs '+value[4]+'</div> \
                              </div> \
                              <div class="content"> \
                                <p>'+value[2]+'</p> \
                                  <!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> --> \
                                  <a href="#" item-id="'+value[0]+'" class="help-btn delete-item">Delete</a> \
                                  <a href="#" item-id="'+value[0]+'" item-name="'+value[1]+'" style="float: right" class="help-btn similar-item">Similar</a> \
                              </div> \
                          </div> \
                      </div>');
                    });
                }
              });
            }
        });

        $('#sort-by').on('change',function(e){
          e.preventDefault();
          var url = '';
          var value = $(this).val();
          if(value == 'asc'){
            url = 'http://localhost:8090/api.php/menu?order=price,'+value;
          }else if(value == 'desc'){
            url = 'http://localhost:8090/api.php/menu?order=price,'+value;
          }
          $.ajax({
            url: url,
            type: 'GET',
            success: function(result) {
                //location.reload();
                $("#disher-box").empty();
                $.each(result['menu']['records'], function( index, value ) {
                  $("#disher-box").append('<div id="item-box-'+value[0]+'" class="four-col col-md-3 view view-fifth"> \
                      <div class="mask"> \
                          <div class="main"> \
                            <div class="trip-title"><h3>'+value[1]+'</h3><br /><p></p></div> \
                            <div class="price"><p>Price</p>Rs '+value[4]+'</div> \
                          </div> \
                          <div class="content"> \
                            <p>'+value[2]+'</p> \
                              <!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> --> \
                              <a href="#" item-id="'+value[0]+'" class="help-btn delete-item">Delete</a> \
                              <a href="#" item-id="'+value[0]+'" item-name="'+value[1]+'" style="float: right" class="help-btn similar-item">Similar</a> \
                          </div> \
                      </div> \
                  </div>');
                });
            }
          });
        });

        
        $('#menu-type').on('change',function(e){
          e.preventDefault();
          var url = '';
          var value = $(this).val();
          if(value == 'all'){
            url = 'http://localhost:8090/api.php/menu';
          }else{
            url = 'http://localhost:8090/api.php/menu?filter=type,cs,'+value;
          }
          $.ajax({
            url: url,
            type: 'GET',
            success: function(result) {
                //location.reload();
                $("#disher-box").empty();
                $.each(result['menu']['records'], function( index, value ) {
                  $("#disher-box").append('<div id="item-box-'+value[0]+'" class="four-col col-md-3 view view-fifth"> \
                      <div class="mask"> \
                          <div class="main"> \
                            <div class="trip-title"><h3>'+value[1]+'</h3><br /><p></p></div> \
                            <div class="price"><p>Price</p>Rs '+value[4]+'</div> \
                          </div> \
                          <div class="content"> \
                            <p>'+value[2]+'</p> \
                              <!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> --> \
                              <a href="#" item-id="'+value[0]+'" class="help-btn delete-item">Delete</a> \
                              <a href="#" item-id="'+value[0]+'" item-name="'+value[1]+'" style="float: right" class="help-btn similar-item">Similar</a> \
                          </div> \
                      </div> \
                  </div>');
                });
            }
          });
        });


        $('#select-resturant').on('change',function(e){
          e.preventDefault();
          var url = '';
          var value = $(this).val();
          if(value == 'all'){
            url = 'http://localhost:8090/api.php/menu?filter=menu.resturant_id,bt,1,3';
          }else{
            url = 'http://localhost:8090/api.php/menu?filter=menu.resturant_id,eq,'+value;
          }
          $.ajax({
            url: url,
            type: 'GET',
            success: function(result) {
                //location.reload();
                $("#disher-box").empty();
                $.each(result['menu']['records'], function( index, value ) {
                  $("#disher-box").append('<div id="item-box-'+value[0]+'" class="four-col col-md-3 view view-fifth"> \
                      <div class="mask"> \
                          <div class="main"> \
                            <div class="trip-title"><h3>'+value[1]+'</h3><br /><p></p></div> \
                            <div class="price"><p>Price</p>Rs '+value[4]+'</div> \
                          </div> \
                          <div class="content"> \
                            <p>'+value[2]+'</p> \
                              <!--<a href="details.html" class="btn btn-primary btn-block">Read More</a> --> \
                              <a href="#" item-id="'+value[0]+'" class="help-btn delete-item">Delete</a> \
                              <a href="#" item-id="'+value[0]+'" item-name="'+value[1]+'" style="float: right" class="help-btn similar-item">Similar</a> \
                          </div> \
                      </div> \
                  </div>');
                });
            }
          });
        });
    });
</script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
	</body>
</html>