<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US"
	data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
<head>
<link rel="stylesheet" href="./static/css/style.css" type='text/css' media="all">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Homemade+Apple"
	rel="stylesheet">

<link rel="stylesheet" href="./static/css/font-awesome.min.css">
<link rel="stylesheet" href="./static/css/lightbox.css">

<script src="http://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
	
<script type="text/javascript" src="./static/js/modernizr.js"></script>
<script type="text/javascript" src="./static/js/TweenMax.min.js"></script>
<script type="text/javascript" src="./static/js/ScrollToPlugin.min.js"></script>
<script type="text/javascript" src="./static/js/ScrollMagic.js"></script>
<script type="text/javascript" src="./static/js/plugins/animation.gsap.js"></script>
<script type="text/javascript" src="./static/js/lightbox.js"></script>

<title>Gallery</title>
<style type="text/css">
</style>
<meta name="generator" content="WordPress 4.9.10" />
<meta name="template" content="Hybrid 1.2" />
<link rel='dns-prefetch' href='//s.w.org' />
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='fts-feeds-css' href='./static/css/styles_4.9.10.css' type='text/css' media='all' />
<link rel='stylesheet' id='fts-popup-css'
	href='./static/css/magnific-popup.css?ver=4.9.10'
	type='text/css' media='all' />
<script type='text/javascript'
	src='./static/js/jquery.js'></script>
<script type='text/javascript'
	src='./static/js/jquery-migrate.min.js'></script>
<script type='text/javascript'
	src='./static/js/admin.js'></script>
<script type='text/javascript'
	src='./static/js/masonry.pkgd.min.js'></script>
<script type='text/javascript'
	src='./static/js/imagesloaded.pkgd.min.js'></script>
<script type='text/javascript'
	src='./static/js/fts-global.js'></script>
<script type='text/javascript'
	src='./static/js/magnific-popup.js'></script>
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>





</head>

<body
	class="wordpress ltr en_US child-theme y2019 m08 d17 h20 saturday logged-out singular singular-page singular-page-15 page-template-portfolio page-15 chrome primary-active secondary-inactive subsidiary-inactive">

</script>



	<div id="body-container">



		<div id="container">



			<header>

				<nav class="desktop_nav">

					<div class="main_logo">
						<a href="http://swativerma.com/"><img
							src="http://swativerma.com/wp-content/themes/swati/img/logo_symbolonly.svg"></a>
					</div>


					<style type="text/css">
</style>


					<span class="showhide"><i class="fa fa-bars"></i></span>

					<ul class="navigation">
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/'/>">Home</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/about'/>">Know Me</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/gallery'/>">Gallary</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/myblogs'/>">My Blog</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/contact'/>" class="nav-link">Contact</a></li>
					</ul>
				</nav>

			</header>


			<style type="text/css">
</style>


			<!-- **************************************************************************************** -->
			<div class="init" id="">
				<!-- **************************************************************************************** -->

				<section class="portfolio_flow" id="flow">


					<div class="flow_content punchline">
						<div class="flow_inside center">
							<p>Take a sneak-peek at Swati’s most breathtaking beauty
								transformations over her incredible career.</p>
						</div>
					</div>

					<div class="flow_content">
						<div class="portfolio_text">
							<h2>Make up</h2>
							<p>Swati loves the spontaneity and creativity of being a PRO
								make-up artist. Here you can see some of the luxurious event and
								party concept looks that she has produced for her clients.</p>
						</div>
						<c:forEach var="galleryPhoto" items="${galleryPhotos}">
						<ul class="thumbs">

							<a
								href="getGelleryPhoto/<c:out value='${galleryPhoto.id}'/>"
								data-lightbox="services-set" data-title="">

								<li><span
									style="background-image: url('getGelleryPhoto/<c:out value='${galleryPhoto.id}'/>');"></span>
							</li>

							</a>
						</ul>
</c:forEach>
					</div>

					<div class="flow_content">
						<div class="portfolio_text">
							<h2>Bridal</h2>

							<p>Swati is very proud and honoured to be able to use her
								expert knowledge and skills to truly enhance the beauty of each
								bride on their special day.</p>
						</div>
						<ul class="thumbs">

							<a
								href="http://swativerma.com/wp-content/uploads/2017/05/File_000.jpg"
								data-lightbox="services-set" data-title="">

							<li><span
									style="background-image: url(http://swativerma.com/wp-content/uploads/2017/05/File_000.jpg);"></span>
							</li>

							</a>


							<a
								href="http://swativerma.com/wp-content/uploads/2017/05/IMG_0004.jpg"
								data-lightbox="services-set" data-title="">

								<li><span
									style="background-image: url(http://swativerma.com/wp-content/uploads/2017/05/IMG_0004.jpg);"></span>
							</li>

							</a>


							<a
								href="http://swativerma.com/wp-content/uploads/2017/05/IMG_0007.jpg"
								data-lightbox="services-set" data-title="">

								<li><span
									style="background-image: url(http://swativerma.com/wp-content/uploads/2017/05/IMG_0007.jpg);"></span>
							</li>

							</a>


							<a
								href="http://swativerma.com/wp-content/uploads/2017/05/IMG_0008.jpg"
								data-lightbox="services-set" data-title="">

								<li><span
									style="background-image: url(http://swativerma.com/wp-content/uploads/2017/05/IMG_0008.jpg);"></span>
							</li>

							</a>


							<a
								href="http://swativerma.com/wp-content/uploads/2017/05/IMG_0009.jpg"
								data-lightbox="services-set" data-title="">

								<li><span
									style="background-image: url(http://swativerma.com/wp-content/uploads/2017/05/IMG_0009.jpg);"></span>
							</li>

							</a>


							<a
								href="http://swativerma.com/wp-content/uploads/2017/05/IMG_0010.jpg"
								data-lightbox="services-set" data-title="">

								<li><span
									style="background-image: url(http://swativerma.com/wp-content/uploads/2017/05/IMG_0010.jpg);"></span>
							</li>

							</a>


							
						</ul>

					</div>


					<link rel="stylesheet"
						href="./static/css/featherlight.css">
					<script type="text/javascript"
						src="./static/js/featherlight.js"></script>

					<style type="text/css">
.featherlight-iframe .featherlight-content {
	overflow-y: hidden !important;
	width: 70% !important;
	max-width: inherit !important;
	height: 70% !important;
	max-height: inherit !important;
	background: none !important;
}
</style>


				</section>
				<!-- **************************************************************************************** -->


				<!-- **************************************************************************************** -->
			</div>
			<!-- **************************************************************************************** -->





			<footer id="contact">
				<div class="fcont_wrap">
					<ul class="footer_col" style="text-align: left;">
						<li><p>© Swati Verma 2019</p></li>
						<li><p>
								<strong>My aim is to make every woman feel truly
									HEAVENLY!</strong>
							</p></li>
					</ul>

					<ul class="footer_col">
						<li><p>
								<strong>Follow me on</strong>
							</p></li>
						<li><a href="https://www.instagram.com/swativerma/"
							target="_blank"><i class="fa fa-instagram"></i></a> <a
							href="https://m.youtube.com/channel/UCK2plxDlloUzkVdfugEXvNQ"
							target="_blank"><i class="fa fa-youtube"></i></a> <a
							href="https://www.facebook.com/swativermaofficial"
							target="_blank"><i class="fa fa-facebook"></i></a> <a
							href="https://www.snapchat.com/add/Swativerma27" target="_blank"><i
								class="fa fa-snapchat-ghost"></i></a></li>
					</ul>

					<ul class="footer_col" style="text-align: right;">
						<li><p>
								<a href="/services">Interested in Swatis make-up? <strong
									style="text-decoration: underline;">Book now!</strong></a>
							</p></li>
						<li><p>
								Contact us <strong><a href="mailto:info@swativerma.com">info@swativerma.com</a></strong>
							</p></li>
						<li><p>
								Read <strong><a href="/terms-and-conditions">Terms
										and Conditions</a></strong>
							</p></li>

					</ul>
				</div>
			</footer>



		</div>
		<!-- #container -->




	</div>
	<!-- #body-container -->






	<script type='text/javascript'
		src="${pageContext.request.contextPath}/static/js/drop-downs.min.js"></script>
	<script type='text/javascript'
		src="${pageContext.request.contextPath}/static/js/wp-embed.min.js"></script>

	<script type="text/javascript">
	
//Function to react to screen re-sizing
function doneResizing() {
    if (Modernizr.mq("screen and (min-width:1200px)")) {
    var controller = new ScrollMagic.Controller

var about = new ScrollMagic.Scene({triggerElement: "#index",offset: 200,duration:4000})
.setTween("#about", {top: "-50%"});

var menu = new ScrollMagic.Scene({triggerElement: ".init",triggerHook: "onLeave", offset:20})
.setTween(".home .main_logo", {opacity: "1"});

var afterscroll = new ScrollMagic.Scene({triggerElement: ".init", triggerHook: "onLeave", offset:20})
.setClassToggle("header", "afterscroll"); 

var biglogo = new ScrollMagic.Scene({triggerElement: ".home_logo",offset: 100,duration:200})
.setTween(".home_logo", {opacity: "0"});


controller.addScene([
about,
menu,
afterscroll,
biglogo
]);

    }
    else if (Modernizr.mq("screen and (max-width:1200px)")) {
    var controller = new ScrollMagic.Controller



var menu = new ScrollMagic.Scene({triggerElement: ".init",triggerHook: "onLeave", offset:0})
.setTween(".home .main_logo", {opacity: "1"});

var afterscroll = new ScrollMagic.Scene({triggerElement: ".init", triggerHook: "onLeave", offset:0})
.setClassToggle("header", "afterscroll"); 




controller.addScene([
menu,
afterscroll
]);
    }
}
 
//Call doneResizing on re-size of the window
var id;
$(window).resize(function () {
    clearTimeout(id);
    id = setTimeout(doneResizing, 0);
});
 
//Call doneResizing on instantiation
doneResizing();

</script>





	<script type="text/javascript"
		src="../../static/js/main.js"></script>

</body>

</html>
