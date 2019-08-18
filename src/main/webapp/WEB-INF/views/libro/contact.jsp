<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Libro - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="static/libro/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="static/libro/css/animate.css">
    
    <link rel="stylesheet" href="static/libro/css/owl.carousel.min.css">
    <link rel="stylesheet" href="static/libro/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="static/libro/css/magnific-popup.css">

    <link rel="stylesheet" href="static/libro/css/aos.css">

    <link rel="stylesheet" href="static/libro/css/ionicons.min.css">

    <link rel="stylesheet" href="static/libro/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="static/libro/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="static/libro/css/flaticon.css">
    <link rel="stylesheet" href="static/libro/css/icomoon.css">
    <link rel="stylesheet" href="static/libro/css/style.css">
  </head>
  <body>

    <nav id="colorlib-main-nav" role="navigation">
      <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
      <div class="js-fullheight colorlib-table">
        <div class="colorlib-table-cell js-fullheight">
          <div class="row d-flex justify-content-end">
            <div class="col-md-12 px-5">
              <ul class="mb-5">
                <li class="active"><a href="<c:url value='/'/>"><span>Home</span></a></li>
                <li><a href="<c:url value='/blogs'/>"><span>Blog</span></a></li>
                <li><a href="<c:url value='/makeover-gallery'/>"><span>Gallery</span></a></li>
                <li><a href="<c:url value='/travel'/>"><span>Travel</span></a></li>
                <li><a href="<c:url value='/aboutus'/>"><span>About us</span></a></li>
                <li><a href="<c:url value='/contactus'/>"><span>Contact</span></a></li>
              </ul>
            </div>
            <div class="col px-5 copyright">
            	<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <br> | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
            </div>
          </div>
        </div>
      </div>
    </nav>
    
    <div id="colorlib-page">
      <header>
      	<div class="container-fluid">
	        <div class="row no-gutters">
	          <div class="col-md-12">
	            <div class="colorlib-navbar-brand">
	              <a class="colorlib-logo" href="index.html">Libro</a>
	            </div>
	            <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
	          </div>
	        </div>
        </div>
      </header>

      <section class="ftco-fixed clearfix">
      	<div class="image js-fullheight float-left">
      		<div class="home-slider owl-carousel js-fullheight">
		        <div class="slider-item js-fullheight" style="background-image: url('static/libro/images/bg_1.jpg');">
		          <div class="overlay"></div>
		          <div class="container">
		            <div class="row slider-text align-items-end" data-scrollax-parent="true">
		              <div class="col-md-10 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		              	<p class="breadcrumbs"><span><a href="index.html">Home</a></span> <span>Contact</span></p>
		                <h1 class="mb-3" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Contact Us</h1>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
      	</div><!-- end:image -->
      	<div class="page-container contact-section float-right">
      		<div class="row d-flex mb-5 contact-info">
            <div class="col-md-12 mb-4">
              <h2 class="h4">Contact Information</h2>
            </div>
            <div class="w-100"></div>
            <div class="col-md-3">
              <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
            </div>
            <div class="col-md-3">
              <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
            </div>
            <div class="col-md-3">
              <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
            </div>
            <div class="col-md-3">
              <p><span>Website</span> <a href="#">yoursite.com</a></p>
            </div>
          </div>
          <div class="row block-9">
            <div class="col-md-12 mb-5">
              <c:url var="sendMessage" value="/contactus" />
				<form:form action="${sendMessage}" method="post"
												modelAttribute="userMessages">
												<form:input type="hidden" path="id" id="id" />
                <div class="form-group">
                  <form:input type="text" path="userName" id="userName" placeholder="Your Name" class="form-control" />
                </div>
                <div class="form-group">
                  <form:input type="text" path="phoneNo" id="phoneNo" placeholder="Your Phone Number" class="form-control" />
                </div>
                 <div class="form-group">
                  <form:input type="text" path="email" id="email" placeholder="Your Email" class="form-control" />
                </div>
                <div class="form-group">
                  <form:input type="text" path="subject" id="subject" placeholder="Subject" class="form-control" />
                </div>
                <div class="form-group">
                  <form:textarea path="message" id="message" placeholder="Message" cols="30" rows="7" class="form-control" />
                </div>
                <div class="form-group">
                  <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
                </div>
              </form:form>
            
            </div>
            <div class="col-md-12" id="map"></div>
          </div>
      	</div><!-- end: page-container-->
      </section>
    	
		  <!-- loader -->
		  <div id="ftco-loader" class="show fullscreen">
		  	<svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg>
		  </div>

  	</div>


  <script src="static/libro/js/jquery.min.js"></script>
  <script src="static/libro/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="static/libro/js/popper.min.js"></script>
  <script src="static/libro/js/bootstrap.min.js"></script>
  <script src="static/libro/js/jquery.easing.1.3.js"></script>
  <script src="static/libro/js/jquery.waypoints.min.js"></script>
  <script src="static/libro/js/jquery.stellar.min.js"></script>
  <script src="static/libro/js/owl.carousel.min.js"></script>
  <script src="static/libro/js/jquery.magnific-popup.min.js"></script>
  <script src="static/libro/js/aos.js"></script>
  <script src="static/libro/js/jquery.animateNumber.min.js"></script>
  <script src="static/libro/js/scrollax.min.js"></script>
  <script src="static/libro/js/bootstrap-datepicker.js"></script>
  <script src="static/libro/js/jquery.timepicker.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="static/libro/js/google-map.js"></script>
  <script src="static/libro/js/main.js"></script>
    
  </body>
</html>