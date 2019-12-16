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

<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,700,900' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Homemade+Apple" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css" type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/lightbox.css">

<script src="http://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/modernizr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/TweenMax.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/ScrollToPlugin.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/ScrollMagic.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/animation.gsap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/lightbox.js"></script>
<link rel='stylesheet' id='fts-feeds-css' href='${pageContext.request.contextPath}/static/css/styles_4.9.10.css' type='text/css' media='all' />
<link rel='stylesheet' id='fts-popup-css'
	href='${pageContext.request.contextPath}/static/css/magnific-popup.css?ver=4.9.10'
	type='text/css' media='all' />
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/jquery.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/jquery-migrate.min.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/admin.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/masonry.pkgd.min.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/imagesloaded.pkgd.min.js'></script>	
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/fts-global.js'></script>
<script type='text/javascript'
	src='${pageContext.request.contextPath}/static/js/magnific-popup.js'></script>

<title>My Blogs</title>
<link rel="profile" href="http://gmpg.org/xfn/11" />


<style type="text/css">
</style>
<meta name="generator" content="WordPress 4.9.10" />
<meta name="template" content="Hybrid 1.2" />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<style>
#message-table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#message-table td, #message-table th {
  border: 1px solid #ddd;
  padding: 8px;
}

#message-table tr:nth-child(even){background-color: #f2f2f2;}

#message-table tr:hover {background-color: #ddd;}

#message-table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: white;
  color: black;
}
</style>
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>
</head>

<body
	class="">

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
					<span class="showhide"><i class="fa fa-bars"></i></span>

					<ul class="navigation">
						<li
							class="menu-item menu-item-type-post_type menu-item-object-page"><a
							href="<c:url value='admin/adminHome'/>">Home</a></li>
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
			
			<div class="init text_page" id="">
			<section class="full" id="index"
					style="background-image: url(${pageContext.request.contextPath}/static/images/IMG_HOME.jpg);">
				
				<div id="pagepost" class="hfeed">
				<div class="entry-content">
				<h2 style="font-family: cursive;">Messages</h2>
					<div class="container">

						<table id="message-table">
							<thead>
								<tr>
									<th>ID</h>
									<th>Name</th>
									<th>Email</th>
									<th>Subject</th>
									<th>Message</th>
								</tr>
							</thead>
							<tbody data-position="0" data-jump="2">
								<c:forEach var="msg" items="${msgList}">
									<tr>
										<td>${msg.id}</td>
										<td>${msg.userName}</td>
										<td>${msg.email}</td>
										<td>${msg.subject}</td>
										<td>${msg.message}</td>
									</tr>

								</c:forEach>
							</tbody>
						</table>

						<button class="less">
							Back
						</button>
						<button class="more">
							Forward
						</button>

</div>
					</div>
				</div>
					</section>
			</div>
		
			<!-- #container -->
		</div>
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

var total    = $('tbody > tr').length;
var position = $('tbody').data('position');
var jump     = $('tbody').data('jump');
var paginate = function(position, jump) {
    /* Show Default Items */
    $('tbody > tr').each(function() {
        /* Variable Defaults */
        var index = $(this).index();

        /* Condition */
        var condition = (index >= position) && (index < position + jump);

        /* Hide/Show Item */
        $(this).toggle(condition);

        /* Set Disabled Status */
        $('.less').prop('disabled', (position - jump) < 0);
        $('.more').prop('disabled', (position + jump) >= total);
    });
};

/* Set Default Text */
$('.count').text(jump);

/* Init Paginate */
paginate(position, jump);

/* Bind Click Events to "Less" and "More" Button */
$('.less, .more').on('click', function() {
    /* Decrease/Increase Position */
    position = $(this).hasClass('less') ? $('tbody').data('position') - jump : $('tbody').data('position') + jump;

    /* Paginate */
    paginate(position, jump);

    /* Update Position */
    $('tbody').data('position', position);
});

</script>
		<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>

</html>
	

<!-- Dynamic page generated in 0.612 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2019-08-13 19:37:18 -->

<!-- super cache -->