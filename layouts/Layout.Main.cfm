﻿<cfoutput><!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ --><!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]--><!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]--><!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]--><!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]--><head>	<meta charset="utf-8" />		<!-- Set the viewport width to device width for mobile -->	<meta name="viewport" content="width=device-width, initial-scale=1.0" />		<meta name="description" content="Foundation is an easy to use, powerful, and flexible framework for building rapid prototypes and production code on any kind of device." />		<title>SocialCloudz 2.0 Boilerplate</title>	<base href="#getSetting('htmlBaseURL')#">		<link rel="apple-touch-icon" href="apple-touch-icon.png" />	<link rel="icon" type="image/ico" href="favicon.ico">  	<!-- Included CSS Files -->	<link rel="stylesheet" href="css/globals.css">	<link rel="stylesheet" href="css/ui-lightness/jquery-ui-1.8.18.custom.css">		<link rel="stylesheet" href="css/typography.css">	<link rel="stylesheet" href="css/grid.css">	<link rel="stylesheet" href="css/ui.css">	<link rel="stylesheet" href="css/forms.css">	<link rel="stylesheet" href="css/orbit.css">	<link rel="stylesheet" href="css/reveal.css">	<link rel="stylesheet" href="css/app.css">	<link rel="stylesheet" href="css/mobile.css">	<link href="js/jQuery.jPlayer.2.1.0/blue.monday/jplayer.blue.monday.css" rel="stylesheet" type="text/css" />	<link rel="stylesheet" href="css/jquery.fileupload-ui.css">	<!--[if lt IE 9]>		<link rel="stylesheet" href="stylesheets/ie.css">	<![endif]-->		<!-- IE Fix for HTML5 Tags -->	<!--[if lt IE 9]>		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>	<![endif]--></head><body>			<cfoutput>#renderView()#</cfoutput>	</div>		<script src="js/jquery.min.js"></script>	<script src="js/jquery-ui-1.8.18.custom.min.js"></script>	<script type="text/javascript"  src="http://maps.googleapis.com/maps/api/js?key=&sensor=true"></script>		<script src="js/modernizr.foundation.js"></script>	<script src="js/jquery.reveal.js"></script>	<script src="js/jquery.orbit-1.4.0.js"></script>	<script src="js/jquery.customforms.js"></script>	<script src="js/jquery.placeholder.min.js"></script>	<script src="js/jquery.tooltips.js"></script>	<script src="js/app.js"></script>	<script type="text/javascript" src="http://jqueryui.com/themeroller/themeswitchertool/"></script>	<script type="text/javascript" src="js/jQuery.jPlayer.2.1.0/jquery.jplayer.min.js"></script>	<script type="text/javascript" src="js/jQuery.jPlayer.2.1.0/add-on/jquery.jplayer.inspector.js"></script>	<script src="js/jquery.raty.min.js"></script>	<script src="js/ui-demo.js"></script></body></html></cfoutput>