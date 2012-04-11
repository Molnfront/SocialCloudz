
<cfoutput>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8" />
	
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!--- Site Title --->
	<title>
		<cfif cb.isEntryView()>
			#cb.getCurrentEntry().getTitle()#
		<cfelse>
			#cb.siteName()# - #cb.siteTagLine()#
		</cfif>
	</title>
	
	<!--- Met Tags --->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="generator" 	 content="ContentBox powered by ColdBox" />
	<meta name="robots" 	 content="index,follow" />
	
	<!--- Meta Description By Entry or By Site --->
	<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLDescription())>
		<meta name="description" content="#cb.getCurrentEntry().getHTMLDescription()#" />
	<cfelse>
		<meta name="description" content="#cb.siteDescription()#" />
	</cfif>
	<!--- Meta Keywords By Entry or By Site --->
	<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLKeywords())>
		<meta name="keywords" 	 content="#cb.getCurrentEntry().getHTMLKeywords()#" />
	<cfelse>
		<meta name="keywords" 	 content="#cb.siteKeywords()#" />
	</cfif>
	
	<!--- Base HREF for SES enabled URLs --->
	<base href="#cb.siteBaseURL()#/" />
	
	<!--- RSS Links --->
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Updates" href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Comment Updates" href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />	
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />	
	<!--- RSS Discovery If In View Mode --->
	<cfif cb.isEntryView()>
		<link rel="alternate" type="application/rss+xml" title="Blog Entry's Recent Comments" href="#cb.linkRSS(comments=true,entry=cb.getCurrentEntry())#" />
	</cfif>
	
	<!--- styles --->
	<link rel="apple-touch-icon" href="apple-touch-icon.png" />
	<link rel="icon" type="image/ico" href="favicon.ico">
  
	<!-- Included CSS Files -->
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/globals.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/ui-lightness/jquery-ui-1.8.18.custom.css">
	
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/typography.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/grid.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/ui.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/forms.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/orbit.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/reveal.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/app.css">
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/mobile.css">
	<link href="#cb.layoutRoot()#/includes/js/jQuery.jPlayer.2.1.0/blue.monday/jplayer.blue.monday.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/jquery.fileupload-ui.css">
	<!--- todo: fix --->
	<!--[if lt IE 9]>
		<link rel="stylesheet" href="stylesheets/ie.css">
	<![endif]-->
	
	<!-- IE Fix for HTML5 Tags -->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<link href="#cb.layoutRoot()#/includes/css/style.css" rel="stylesheet" type="text/css" />
	
	<!--- javascript --->
	<script src="#cb.layoutRoot()#/includes/js/jquery.min.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery-ui-1.8.18.custom.min.js"></script>
	<script type="text/javascript"  src="http://maps.googleapis.com/maps/api/js?key=&sensor=true"></script>
	
	<script src="#cb.layoutRoot()#/includes/js/modernizr.foundation.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.reveal.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.orbit-1.4.0.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.customforms.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.placeholder.min.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.tooltips.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/app.js"></script>
	<script type="text/javascript" src="http://jqueryui.com/themeroller/themeswitchertool/"></script>
	<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/jQuery.jPlayer.2.1.0/jquery.jplayer.min.js"></script>
	<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/jQuery.jPlayer.2.1.0/add-on/jquery.jplayer.inspector.js"></script>
	<script src="#cb.layoutRoot()#/includes/js/jquery.raty.min.js"></script>

	<script src="#cb.layoutRoot()#/includes/js/ui-demo.js"></script>

	<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/default.js"></script>
	
	<!--- contentboxEvent --->
	#cb.event("cbui_beforeHeadEnd")#
</head>
<body>
	<!--- contentboxEvent --->
	#cb.event("cbui_afterBodyStart")#
	
	<!--- Main Content --->
	<div class="main">
		
		<!--- blok_Header --->
		<div class="blok_header">	    
			<!--- Header --->
			<div class="header">				
				<!--- Logo Title --->
				<div class="logo">
					<div id="logoTitle">#cb.siteName()#</div>
				</div>
				
				<!--- Custom Search Box --->
		      	#cb.quickView("_search")#
		      	
				<!--- Spacer --->
				<div class="clr"><br/></div>
				
				<!--- Top Menu Bar --->
				<div class="menu">
					#cb.quickView('_menu')#
					<div id="tagline">#cb.siteTagLine()#</div>
					<div class="clr"></div>
				</div>
				<!--- Spacer --->
				<div class="clr"></div>				
		    </div> 
			<!--- end header --->		
		    <div class="clr"></div>
		</div>
		<!--- end block_header --->

		<!--- body resize page --->
		<div class="body_resize">
			<div class="body">
				<div class="body_bg">
					<!--- contentboxEvent --->
					#cb.event("cbui_beforeContent")#
					
					<!--- Content --->
					<div class="left">#cb.mainView()#</div>
					
					<!--- SideBar: That's right, I can render any layout views by using quickView() or coldbo'x render methods --->
					<div class="right">#cb.quickView(view='_sidebar')#</div> 
					
					<!--- Separator --->
					<div class="clr"></div>
					
					<!--- contentboxEvent --->
					#cb.event("cbui_afterContent")#
				</div>
			</div>
			<!--- Separator --->
			<div class="clr"></div>
		</div>
		
	</div>
	<!--- end main --->
		
		
	<!--- bottom resize --->
	<div class="FBG">
		<div class="FBG_resize">
			<div class="left">
			  <h2>Categories</h2>
			  #cb.widget(name="Categories")#
			</div>
			<div class="left">
			  #cb.widget("Meta")#
			</div>
			<div class="left">
			  <h2>RSS Feeds</h2>
			  <ul>
			    <li><a href="#cb.linkSiteRSS()#">Recent Content Updates</a></li>
			    <li><a href="#cb.linkSiteRSS(comments=true)#">Recent Content Comments</a></li>
				<li><a href="#cb.linkRSS()#">Recent Blog Updates</a></li>
				<li><a href="#cb.linkRSS(comments=true)#">Recent Blog Comments</a></li>
				<li><a href="#cb.linkPageRSS()#">Recent Page Updates</a></li>
				<li><a href="#cb.linkPageRSS(comments=true)#">Recent Page Comments</a></li>
			  </ul>
			</div>
			<div class="clr"></div>
		</div>
		<div class="clr"></div>
	</div>
		
	<!--- footer --->
	<div class="footer">
		<!--- contentboxEvent --->
		#cb.event("cbui_footer")#
		<div class="clr"></div>
	</div> 
	<!--- end footer --->
		
	<!--- contentboxEvent --->
	#cb.event("cbui_beforeBodyEnd")#	
</body>
</html>
</cfoutput>