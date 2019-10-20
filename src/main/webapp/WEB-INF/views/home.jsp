<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US"
	data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
<head>
<link rel="stylesheet" href="./static/css/style.css" type='text/css'>
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
<script type="text/javascript"
	src="./static/js/plugins/animation.gsap.js"></script>
<script type="text/javascript" src="./static/js/lightbox.js"></script>

<title>Makeover By Manjuvani Vikrant</title>
<link rel="profile" href="http://gmpg.org/xfn/11" />

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Lato);
@import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css);
body {
    font-family: 'Lato', sans-serif;
    color: #FFF;
    background: #322f30;
    -webkit-font-smoothing: antialiased;
}
a {
    text-decoration: none;
    color: #fff;
}
p > a:hover{
    color: #d9d9d9;
    text-decoration:  underline;
}
h1,
h2,
h3,
h4,
h5,
h6 {
    margin:  1% 0 1% 0;
}
._12 {
    font-size: 1.2em;
}
._14 {
    font-size: 1.4em;
}
ul {
    padding:0;
    list-style: none;
}
.footer-social-icons {
    width: 350px;
    display:block;
    margin: 0 auto;
}
.social-icon {
    color: #fff;
}
ul.social-icons {
    margin-top: 10px;
}
.social-icons li {
    vertical-align: top;
    display: inline;
    height: 100px;
}
.social-icons a {
    color: #fff;
    text-decoration: none;
}
.fa-facebook {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-facebook:hover {
    background-color: #3d5b99;
}
.fa-twitter {
    padding:10px 12px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-twitter:hover {
    background-color: #00aced;
}
.fa-rss {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-rss:hover {
    background-color: #eb8231;
}
.fa-youtube {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-youtube:hover {
    background-color: #e64a41;
}
.fa-linkedin {
    padding:10px 14px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-linkedin:hover {
    background-color: #0073a4;
}
.fa-google-plus {
    padding:10px 9px;
    -o-transition:.5s;
    -ms-transition:.5s;
    -moz-transition:.5s;
    -webkit-transition:.5s;
    transition: .5s;
    background-color: #322f30;
}
.fa-google-plus:hover {
    background-color: #e25714;
}
</style>
<meta name="generator" content="WordPress 4.9.10" />
<meta name="template" content="Hybrid 1.2" />
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
<style type="text/css">
#rotating-item-wrapper {
	position: relative;
	padding: 30% 0;
	margin: 0 0 30px;
}

#rotating-item-wrapper li {
	position: absolute;
	background-size: cover;
	background-position: 50% 50%;
	background-repeat: no-repeat;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
}
</style>
<link rel='stylesheet' id='fts-feeds-css'
	href='./static/css/styles_4.9.10.css' type='text/css' media='all' />
<link rel='stylesheet' id='fts-popup-css'
	href='./static/css/magnific-popup.css?ver=4.9.10' type='text/css'
	media='all' />
<script type='text/javascript' src='./static/js/jquery.js'></script>
<script type='text/javascript' src='./static/js/jquery-migrate.min.js'></script>
<script type='text/javascript' src='./static/js/admin.js'></script>
<script type='text/javascript' src='./static/js/masonry.pkgd.min.js'></script>
<script type='text/javascript'
	src='./static/js/imagesloaded.pkgd.min.js'></script>
<script type='text/javascript' src='./static/js/fts-global.js'></script>
<script type='text/javascript' src='./static/js/magnific-popup.js'></script>

<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>

</head>

<body
	class="wordpress ltr en_US child-theme y2019 m08 d11 h14 sunday logged-out home singular singular-page singular-page-8 page-template-start page-8 chrome primary-active secondary-inactive subsidiary-inactive">
	<div id="">
		<div id="">
			<header>
				<nav class="desktop_nav">
					<div class="main_logo">
						<!-- <a href="http://swativerma.com/"><img
							src="http://swativerma.com/wp-content/themes/swati/img/logo_symbolonly.svg"></a> -->
							
					</div>
					<span class="showhide"><i class="fa fa-bars"></i></span>
					<ul class="navigation">
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/'/>">Home</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/about'/>">Know Me</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/gallery'/>">Gallary</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/myblogs'/>">My Blog</a></li>
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/contact'/>">Contact</a></li>
				<%-- 		<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='/contact'/>" class="nav-link">Contact</a></li> --%>
					</ul>
				</nav>
			</header>



			<script src="./static/js/jquery.smoothwheel.js"></script>
<script type="text/javascript">

jQuery.noConflict();

(function ($) {

function readyFn() {
if (!Modernizr.touch) {
$(window).smoothWheel();
}
}                                    

$(document).ready(readyFn);
})(jQuery);

</script>

			<div class="init" id="">

				<section class="" id="index"
					style="background-image: url(./static/images/IMG_HOME.jpg); height: 700px;">

					<!-- <img class="home_logo"
						src="static/images/logo_manjuVikrant.svg"> -->
				</section>


			</div>

			<script type="text/javascript">
    jQuery.noConflict();
(function ($) {
function readyFn() {

$(window).load(function() { //start after HTML, images have loaded
 
    var InfiniteRotator =
    {
        init: function()
        {
            //initial fade-in time (in milliseconds)
            var initialFadeIn = 0;
 
            //interval between items (in milliseconds)
            var itemInterval = 2000;
 
            //cross-fade time (in milliseconds)
            var fadeTime = 800;
 
            //count number of items
            var numberOfItems = $('#rotating-item-wrapper li').length;
 
            //set current item
            var currentItem = 0;
 
            //show first item
            $('#rotating-item-wrapper li').eq(currentItem).fadeIn(initialFadeIn);
 
            //loop through the items
            var infiniteLoop = setInterval(function(){
                $('#rotating-item-wrapper li').eq(currentItem).fadeOut(fadeTime);
 
                if(currentItem == numberOfItems -1){
                    currentItem = 0;
                }else{
                    currentItem++;
                }
                $('#rotating-item-wrapper li').eq(currentItem).fadeIn(fadeTime);
 
            }, itemInterval);
        }
    };
 
    InfiniteRotator.init();
 
});
        }                                    
$(document).ready(readyFn);
})(jQuery);
</script>


			<section class="" id="fastfood">

				<div class="lightgrey_content"
					style="padding: 100px 0 0px; background: rgb(24, 24, 25);">

					<div class="content">

						<ul>
							<li><a href="<c:url value='/gallery'/>">

									<div class="thumb" style="padding: 0; margin: 0;">

										<ul id="rotating-item-wrapper">
											<c:forEach var="galleryPhoto" items="${galleryPhotos}">
												<li
													style="background-image: url('getGelleryPhoto/<c:out value='${galleryPhoto.id}'/>');"></li>
											</c:forEach>
										</ul>

									</div>

									<h2>See the portfolio</h2>

									<p>As a truly inspirational and creative make-up artist,
										Swati gives you an exclusive look at some of her most luxe
										beauty looks in this chic portfolio. After 7 years at the top
										of her industry, this most sought-after artist shares her
										stunning bridal transformations that leave her clients
										radiating STAR appeal.</p>

									<div class="page_rdm" style="background-color: white">See
										the portfolio</div>

							</a></li>
						<style type="text/css">
.blog_column p img {
	display: none;
}

.blog_column p br {
	display: none;
}
</style>

							<li class="blog_column"><a
								href="<c:url value='/blogDetail/${makeupBlog.id}'/>">
									<div class="thumb"
										style="background-image: url('getblogPhoto/<c:out value='${makeupBlog.id}'/>');"></div>
									<h2 style="font-family: 'Playfair Display', serif;">My
										latest blog post</h2>
									<p>${makeupBlog.shortArticleContent}</p>...

									<div class="page_rdm" style="background-color: white">Read
										the post</div>
							</a></li> </
					</div>

				</div>

			</section>



			<!-- <section class="" id="socialmedia">

		<div class="socialmedia_content">

<div class="content" style="text-align: center;">

<a href="https://www.instagram.com/swativerma/" target="_blank">
<h2>Make a booking request</h2>
<p>Fill the form below, and our team will be in touch very soon.</p>
</a>

<div class="sf-wrapper" style="width: 100%;margin-bottom: 50px;box-sizing:border-box;">
<div id="serviceform" style="max-width:600px;margin:0 auto;"></div><script type="text/javascript" language="javascript" src="https://serviceform.com/serviceform/js/14663"></script><script type="application/javascript" src="https://www.serviceform.com/serviceform.js/serviceform.js?swati" defer></script><link rel="stylesheet" href="https://www.serviceform.com/serviceform.js/serviceform.css?swati"></div>
<style>#serviceform p.answer{font-size:15px !important;}@media screen and (max-width: 600px) {.sf-wrapper{padding:0 10px;}}
#serviceform .form-subheader {font-size: 14px; line-height: 18px;} #serviceform .form-header {font-size: 17px; line-height: 24px;} #serviceform img.sf-top-logo { max-height: 45px;}.sf-top-logo-wrapper {margin-bottom: 25px; margin-top: 10px;}.services_darkcontent a {color: #f1bfc1;font-weight:600;}
#serviceform p.answer {
  font-size: 13px !important;
  line-height: 19px !important;
}
#serviceform .form-subheader {
  max-width: 80% !important;
}
#serviceform p.description {
  font-size: 10px !important;
}
#serviceform .option-header {
 position: relative;
 top: -10px;
}
</style>

<style type="text/css">
	.slicker-instagram-placeholder {

	width: 25% !important;
	margin: 0 !important;

}
@media screen and (max-width: 1100px) {
    .slicker-instagram-placeholder {width: 50% !important;}
    .socialmedia_content {padding: 0 40px;}
    }
    @media screen and (max-width:800px) {
    .slicker-instagram-placeholder {width: 100% !important;}
    }
</style>


	</div>

	</div>

</section> -->
			<!-- **************************************************************************************** -->

		</div>

		<!-- **************************************************************************************** -->
		<footer id="contact">
			<!-- <div class="fcont_wrap">

				<ul class="footer_col">
					<li><p>
							<strong>Follow me on</strong>
						</p></li>
					<li><a href="https://www.instagram.com/swativerma/"
						target="_blank"><i class="fa fa-instagram"></i></a> <a
						href="https://m.youtube.com/channel/UCK2plxDlloUzkVdfugEXvNQ"
						target="_blank"><i class="fa fa-youtube"></i></a> <a
						href="https://www.facebook.com/swativermaofficial" target="_blank"><i
							class="fa fa-facebook"></i></a> <a
						href="https://www.snapchat.com/add/Swativerma27" target="_blank"><i
							class="fa fa-snapchat-ghost"></i></a></li>
				</ul>

				<ul class="footer_col" style="text-align: right;">
				</ul>
			</div> -->
			<div class="footer-social-icons">
    <h4 class="_14">Follow us on</h4>
    <ul class="social-icons">
        <li><a href="" class="social-icon"> <i class="fa fa-f acebook"></i></a></li>
       <!--  <li><a href="" class="social-icon"> <i class="fa fa-twitter"></i></a></li> -->
        <li><a href="" class="social-icon"> <i class="fa fa-rss"></i></a></li>
        <li><a href="" class="social-icon"> <i class="fa fa-youtube"></i></a></li>
       <!--  <li><a href="" class="social-icon"> <i class="fa fa-linkedin"></i></a></li> -->
        <li><a href="" class="social-icon"> <i class="fa fa-google-plus"></i></a></li>
    </ul>
</div>
		</footer>



	</div>
	<!-- #container -->

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
