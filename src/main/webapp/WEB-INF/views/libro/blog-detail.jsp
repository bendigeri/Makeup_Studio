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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/libro/css/style.css">
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
		        <div class="slider-item js-fullheight" style="background-image: url('${pageContext.request.contextPath}/static/libro/images/bg_1.jpg');">
		          <div class="overlay"></div>
		          <div class="container">
		            <div class="row slider-text align-items-end" data-scrollax-parent="true">
		              <div class="col-md-10 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		              	<p class="breadcrumbs"><span><a href="index.html">Home</a></span> <span>Blog</span></p>
		                <h1 class="mb-3" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Blog Single</h1>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
      	</div><!-- end:image -->

      	<div class="page-container float-right">
      		<div class="row">
            <div class="col-md-12">
              <h2 class="mb-3">${makeupBlog.title}</h2>
              <p>
                <img src="getblogPhoto/<c:out value='${makeupBlog.id}'/>" alt="" class="img-fluid">
              </p>
              <p>Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
              <div class="about-author d-flex pt-5">
                <div class="bio align-self-md-center mr-4">
                  <img src="${pageContext.request.contextPath}/static/libro/images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4">
                </div>
                <div class="desc align-self-md-center">
                  <h3>About The Author</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
                </div>
              </div>


              
            </div> <!-- .col-md-12 -->
          </div>
      	</div><!-- end: page-container-->
      </section>
    	
		  <!-- loader -->
		  <div id="ftco-loader" class="show fullscreen">
		  	<svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg>
		  </div>

  	</div>


  <script src="${pageContext.request.contextPath}/static/libro/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/scrollax.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/bootstrap-datepicker.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/jquery.timepicker.min.js"></script>
  <script src="${pageContext.request.contextPath}/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/static/libro/js/main.js"></script>
    
  </body>
</html>