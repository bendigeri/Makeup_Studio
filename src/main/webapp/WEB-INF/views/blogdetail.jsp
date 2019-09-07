<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US"
	data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

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


<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css" type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/lightbox.css">
<title>${makeupBlog.title}</title>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/modernizr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/TweenMax.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/ScrollToPlugin.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/ScrollMagic.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/plugins/animation.gsap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/lightbox.js"></script><style type="text/css">
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
<script type='text/javascript' src='${pageContext.request.contextPath}/static/js/jquery-migrate.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/static/js/admin.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/static/js/masonry.pkgd.min.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/imagesloaded.pkgd.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/static/js/fts-global.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/static/js/magnific-popup.js'></script>
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>
</head>

<body
	class="wordpress ltr en_US child-theme y2019 m08 d16 h19 friday logged-out singular singular-post singular-post-1175 single-1175 chrome primary-active secondary-inactive subsidiary-inactive">

	<div id="body-container">
		<div id="container">
			<header>
				<nav class="desktop_nav">
					<div class="main_logo">
						<a href="http://swativerma.com/"><img
							src="http://swativerma.com/wp-content/themes/swati/img/logo_symbolonly.svg"></a>
					</div>
					<span class="showhide"><i class="fa fa-bars"></i></span>

					<ul class="navigation">
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/'/>">Home</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/about'/>">Know Me</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/gallery'/>">Gallary</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/myblog'/>">My Blog</a></li>
						<li class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/contact'/>" class="nav-link">Contact</a></li>
					</ul>
				</nav>

			</header>

			<div class="init text_page" id="">

				<div id="pagepost" class="hfeed">


					<div id="post-1175"
						class="hentry post publish post-1 odd author-swatieditor category-personal category-sponsored post_tag-audiobooks post_tag-personal-development post_tag-swati-verma post_tag-travel">
						<h2>${makeupBlog.title}</h2>
						<!--<p class="thedate"><strong>2018-04-26</strong></p>-->
						<div class="entry-content">
							<p>
								<img class="aligncenter size-full wp-image-1177"
									src="getblogPhoto/<c:out value='${makeupBlog.id}'/>"
									sizes="(max-width: 1000px) 100vw, 1000px" />
							</p>
							<p>Hello my lovelies!</p>
							<p>${makeupBlog.articleContent}</p>
							<p>
								
							</p>
							
						</div>
						<!-- .entry-content -->



					</div>
				</div>
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
									Contact us <strong><a
										href="mailto:info@swativerma.com">info@swativerma.com</a></strong>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>