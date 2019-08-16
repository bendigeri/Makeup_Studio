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
	href="http://swativerma.com/wp-content/themes/swati/style.css"
	type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon"
	href="http://swativerma.com/wp-content/themes/swati/img/logo.svg"
	type="image/x-icon" />

<link
	href='https://fonts.googleapis.com/css?family=Roboto:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Homemade+Apple"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://swativerma.com/wp-content/themes/swati/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://swativerma.com/wp-content/themes/swati/css/lightbox.css">

<script src="http://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script
	src="http://swativerma.com/wp-content/themes/swati/js/modernizr.js"></script>
<script type="text/javascript"
	src="http://swativerma.com/wp-content/themes/swati/js/TweenMax.min.js"></script>
<script type="text/javascript"
	src="http://swativerma.com/wp-content/themes/swati/js/ScrollToPlugin.min.js"></script>
<script
	src="http://swativerma.com/wp-content/themes/swati/js/ScrollMagic.js"></script>
<script type="text/javascript"
	src="http://swativerma.com/wp-content/themes/swati/js/plugins/animation.gsap.js"></script>
<script type="text/javascript"
	src="http://swativerma.com/wp-content/themes/swati/js/lightbox.js"></script>

<title>Blog</title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="http://swativerma.com/xmlrpc.php" />


<style type="text/css">
</style>
<meta name="generator" content="WordPress 4.9.10" />
<meta name="template" content="Hybrid 1.2" />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml"
	title="Swati Verma &raquo; Feed" href="http://swativerma.com/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Swati Verma &raquo; Comments Feed"
	href="http://swativerma.com/comments/feed/" />
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/swativerma.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.10"}};
			!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55358,56760,9792,65039],[55358,56760,8203,9792,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
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
	href='http://swativerma.com/wp-content/plugins/feed-them-social/feeds/css/styles.css?ver=4.9.10'
	type='text/css' media='all' />
<link rel='stylesheet' id='fts-popup-css'
	href='http://swativerma.com/wp-content/plugins/feed-them-social/feeds/css/magnific-popup.css?ver=4.9.10'
	type='text/css' media='all' />
<script type='text/javascript'
	src='http://swativerma.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript'
	src='http://swativerma.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ftsAjax = {"ajaxurl":"http:\/\/swativerma.com\/wp-admin\/admin-ajax.php"};
var ftsAjax = {"ajaxurl":"http:\/\/swativerma.com\/wp-admin\/admin-ajax.php"};
/* ]]> */
</script>
<script type='text/javascript'
	src='http://swativerma.com/wp-content/plugins/feed-them-social/admin/js/admin.js?ver=4.9.10'></script>
<script type='text/javascript'
	src='http://swativerma.com/wp-content/plugins/feed-them-social/feeds/js/masonry.pkgd.min.js?ver=4.9.10'></script>
<script type='text/javascript'
	src='http://swativerma.com/wp-content/plugins/feed-them-social/feeds/js/imagesloaded.pkgd.min.js?ver=4.9.10'></script>
<script type='text/javascript'
	src='http://swativerma.com/wp-content/plugins/feed-them-social/feeds/js/fts-global.js?ver=4.9.10'></script>
<script type='text/javascript'
	src='http://swativerma.com/wp-content/plugins/feed-them-social/feeds/js/magnific-popup.js?ver=4.9.10'></script>
<link rel='https://api.w.org/' href='http://swativerma.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="http://swativerma.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="http://swativerma.com/wp-includes/wlwmanifest.xml" />
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>





</head>

<body
	class="wordpress ltr en_US child-theme y2019 m08 d11 h19 sunday logged-out blog chrome primary-active secondary-inactive subsidiary-inactive">

	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-101676500-1', 'auto');
  ga('send', 'pageview');

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
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/home'/>">Home</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/about'/>">Know Me</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="http://swativerma.com/services/">Gallary</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/myblog'/>">My Blog</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/contact'/>" class="nav-link">Contact</a></li>
					</ul>
				</nav>

			</header>

			<div class="init blog_feed" id="">

				<div id="blogfeed" class="hfeed">

					<div class="breadcrumb-trail breadcrumbs" itemprop="breadcrumb">
						<span class="trail-before">Browse:</span> <span
							class="trail-begin"><a href="http://swativerma.com"
							title="Swati Verma" rel="home" class="trail-begin">Home</a></span> <span
							class="sep">/</span> <span class="trail-end">Blog</span>
					</div>
					<div class="blogintro">
						<h1>Swati’s World</h1>
						<p>Read Swati’s take on all the HOTTEST global make-up and
							beauty trends.</p>
					</div>

					<!-- .hentry -->

					<c:forEach var="makeupBlog" items="${blogs}">

						<div id=""
							class="hentry post publish post-2 even alt author-swatieditor has-more-link category-personal category-sponsored post_tag-audiobooks post_tag-personal-development post_tag-swati-verma post_tag-travel"
							style="background-image: url('getblogPhoto/<c:out value='${makeupBlog.id}'/>');">


							<div class="blog_content">
								<div class="blog_content_wrap">
									<h2>${makeupBlog.title}</h2>
									<p class="thedate">
										<strong>2018-04-26</strong>
									</p>
									<p>${makeupBlog.shortArticleContent}[&hellip;]</p>

									<a class="blog_rdm"
										href="<c:url value='/readMyblog/${makeupBlog.id}'/>">Read
										more</a>
								</div>
							</div>


						</div>

						<tr>
							<td><img width="10" height="10"
								src="getblogPhoto/<c:out value='${makeupBlog.id}'/>"></td>
						</tr>
					</c:forEach>
				</div>
				<!-- .content .hfeed -->
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
		src='http://swativerma.com/wp-content/themes/hybrid/library/js/drop-downs.min.js?ver=20110920'></script>
	<script type='text/javascript'
		src='http://swativerma.com/wp-includes/js/wp-embed.min.js?ver=4.9.10'></script>

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
		src="http://swativerma.com/wp-content/themes/swati/js/main.js"></script>

</body>

</html>


<!-- Dynamic page generated in 0.238 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2019-08-11 19:18:37 -->

<!-- super cache -->