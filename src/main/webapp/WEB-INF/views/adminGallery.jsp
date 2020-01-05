<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en-US"
	data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/style.css"
	type="text/css" media="all" />
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/lightbox.css">

<script src="http://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/static/js/modernizr.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/TweenMax.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/ScrollToPlugin.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/ScrollMagic.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/plugins/animation.gsap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/lightbox.js"></script>

<title>Gallery</title>

<style type="text/css">
</style>
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
<link rel='stylesheet' id='fts-feeds-css'
	href='${pageContext.request.contextPath}/static/css/styles_4.9.10.css' type='text/css' media='all' />
<link rel='stylesheet' id='fts-popup-css'
	href='${pageContext.request.contextPath}/static/css/magnific-popup.css?ver=4.9.10' type='text/css'
	media='all' />
<script type='text/javascript' src='${pageContext.request.contextPath}/static/js/jquery.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/jquery-migrate.min.js'></script>
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>





</head>

<body
	class="wordpress ltr en_US child-theme y2019 m10 d20 h19 sunday logged-out singular singular-page singular-page-30 page-template-flow page-30 chrome primary-active secondary-inactive subsidiary-inactive">

	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-101676500-1', 'auto');
  ga('send', 'pageview');

</script>



	<div id="">



		<div id="">



			<header>

				<nav class="desktop_nav">

					<style type="text/css">
</style>


					<span class="showhide"><i class="fa fa-bars"></i></span>

					<ul class="navigation">
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/admin/adminHome'/>">Home</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/admin/adminGallery'/>">Gallary</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/admin/writeBlog'/>">Write Blog</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/admin/myblogs'/>">My Blogs</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/admin/getMessages'/>" class="nav-link">Messages</a></li>
						
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/admin/logout'/>" class="nav-link">Logout</a></li>	
						
					</ul>
				</nav>

			</header>
				<section class="" id="flow" style="margin-top: 0px";>
					<div class="flow_content firsttext">
						<div class="flow_inside image left">
							<img
								src="${pageContext.request.contextPath}/static/images/IMG_HOME.jpg">
						</div>
						<div class="flow_inside text right">
							<div class="" id="">
				<div id="pagepost" class="hfeed">
					<h2 style="font-family: cursive;">Upload Image to Gallery</h2>
					<div class="entry-content">
						<div class="container">
							<form:form method="POST"
								action="uploadImage?${_csrf.parameterName}=${_csrf.token}"
								enctype="multipart/form-data" modelAttribute="gallery">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<form:input type="hidden" path="id" id="id" />
								<%-- <div class="row">
									<div class="col-25">
										<label for="subject">Content</label>
									</div>
									<div class="col-75">
										<form:textarea path="articleContent" id="articleContent"
											placeholder="Article Content" cols="30" rows="7"
											class="form-control" />
									</div>
								</div> --%>
								<div class="row">
									<div class="col-25">
										<label for="lname" style="font-family: cursive;">File</label>
									</div>
									<div class="col-75">
										<input type="file" name="fileUpload" size="50"
											placeholder="Select a file" style="background-color: white;"/>
									</div>
								</div>
								<div class="row">
									<input type="submit" value="Submit" style="background-color: white;">
								</div>
							</form:form>
						</div>


					</div>
					<!-- .entry-content -->

				</div>
	
			</div>
						</div>

					</div>

				</section>
		</div>
		<!-- #container -->




	</div>

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
		src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
