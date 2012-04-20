<style type="text/css">
	.portlet {  float: left; height: auto; width: auto; }
	.portlet-header { margin: 0.3em; padding-bottom: 4px; padding-left: 0.2em; height: 25px; }
	.portlet-header span.ui-icon{ float:left; }
	.portlet-header div { float: left;}
	.portlet-header .toolbar { float: right;}
	.portlet-content { padding: 0.4em; }
	.ui-sortable-placeholder { border: 1px dotted black; visibility: visible !important; height: 50px !important; }
	.ui-sortable-placeholder * { visibility: hidden; }
	#editMenu{ float: left; left: -60px; position: relative; }
</style>

<script>
	$(document).ready(function(){
	
		$( ".content" ).sortable({
			connectWith: ".content",
			placeholder: "ui-state-highlight",
			forceHelperSize: true,
			forcePlaceholderSize: true, 
			opacity: 0.6,
			distance: 15,
			handle: '.move'
		});
	
		$( ".portlet" ).addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
			.find( ".portlet-header" )
				.addClass( "ui-widget-header ui-corner-all" )
				.end()
			.find( ".portlet-content" );
	
		$( ".portlet" ).resizable({
			grid: 10,
			containment: ".row",
			start: function(event, ui){ console.log(ui); }
		});
		
	
	$( "#modulePrototype" ).draggable({
			connectToSortable: ".content",
			helper: "clone",
			revert: "invalid",
			drop: function(event,ui){
				console.log(ui);
				
			}
		});
		
	
		 $('#orbitDemo').orbit({
         animation: 'horizontal-push'
     });
	 $("#accordion").accordion({ header: "h3" });
	 
	 $('#tabs').tabs();
	 
	 $('#addRow').click(function(){
	 	console.log('addRow');
	 });
	 
	 $('#editMenu').click(function(){
	 	console.log('editMenu');	
	 });
	});
</script>
<cfoutput>
	
		<div class="row">
			<div class="twelve columns">
				<div class="panel">
					<p>
						This is a twelve column section in a row. Each of these includes a div.panel element so you can see where the columns are - it's not required at all for the grid.
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			
		<div id="editMenu">Edit Menu</div>
		
		<ul class="nav-bar">
			<li>
				<a href="" class="main">Nav Item 1</a>
			</li>
			
		</ul>
		</div>
		<div class="row">
		
			<ul class="breadcrumbs">
				<li>
					<a href="">Home</a></li>
								<li><a href="">
						Features
					</a>
				</li>
				<li class="unavailable">
					<a href="">Gene Splicing</a>
				</li>
			
			</ul>


			<dl class="sub-nav">
				<dt>
					Filter:
				</dt>
				<dd class="active">
					<a href="#">All</a></dd>
								<dd><a href="#">
						Active
					</a>
				</dd>
				<dd>
					<a href="#">Pending</a></dd>
								<dd><a href="#">
						Suspended
					</a>
				</dd>
			</dl>
		</div>	
		
		<div class="row">
			<A id="addRow">Add a Row</A>
			<div class="portlet" id="modulePrototype">
				<div class="portlet-header">
					<span class="ui-icon ui-icon-carat-1-w"></span>
					Add a Module
				</div>
				<div class="portlet-content">
					#renderView('modules/prototype')#
					<br style="clear:both">
				</div>
			</div>
		</div>
		
		
		<div class="row content">
				#renderLayout('module', 'modules/scroller')#
				#renderLayout('module', 'modules/tabs')#
				#renderLayout('module', 'modules/accordion')#	
		</div>
	
		<div class="row">
			<div class="twelve columns">
				<div class="panel">
					<p>
						This is a twelve column section in a row. Each of these includes a div.panel element so you can see where the columns are - it's not required at all for the grid.
					</p>
				</div>
			</div>
		</div>
		
</cfoutput>	
		<style type="text/css">
			
div#toolbar, div#toolbarbut {
  position: fixed; /* set fixed position for the bar */
  bottom: 0px;
  right: 0px;
  z-index: 9999; /* keep the bar on top  */
  height: 36px;
  background: url(images/bcktool.png);
  /* CSS3 */
  -moz-border-radius-topleft: 8px;
	-khtml-border-radius-topleft: 8px;
	-webkit-border-top-left-radius: 8px;
	-moz-border-radius-topright: 8px;
	-khtml-border-radius-topright: 8px;
	-webkit-border-top-right-radius: 8px;
	-moz-box-shadow: 0px 1px 10px #666, inset 1px 1px 0px #a4a4a4; /* inset creates a inner-shadow */
  -khtml-box-shadow: 0px 1px 10px #666;
  -webkit-box-shadow: 0px 1px 10px #666;
  /* CSS3 end */
	border-top: 1px solid #eee;
  border-left: 1px solid #eee; 
  border-right: 1px solid #eee;  
}

div#toolbar {
  width: 80%;
  min-width: 30px; /* to limit the width when an excessive window resize */
  margin: 0px auto; /* centered toolbar */
  left: 0px;
}

div#toolbarbut { /* div for the 'hide status' */
  width: 60px;
  height: 15px;
  margin-right: 3%;
  display: none;
}

span.showbar a { /* show button */
  padding: 5px;  
  font-size: 10px;
  color: #989898;
}

.leftside {  float: left;}
.rightside {  float: right; padding: 8px 0px 0px 0px;}


ul#social li {  display: inline; }

#tipshare {
  position: absolute; /* important */
  top: -55px;
  width: 380px;
  height: 25px;
  float: left;
  display: none;
  border: 2px solid black;
  border-radius: 5px;
  padding: 10px;
  background: #e4e4e4;
}




#socialcloudz { 
width: 111px;
height: 25px;
background: url(images/sc_icon2.png) 10px 5px no-repeat;
padding: 0px 10px;
display: inline-block;

}


span.downarr { 
  float: right;
  border-left: 1px solid #a4a4a4;
}

span.downarr a {
  display: block;
  width: 36px;
  height: 26px;
  padding: 25px 0 0 10px;
  background: url(images/downarrow.png) no-repeat 5px 0px;
}

span.menu_title {
  border-left: 1px solid #a4a4a4;
  padding: 10px 10px;
}

a.share { 
  border-left: 1px solid #a4a4a4;
  border-right: 1px solid #a4a4a4;
  padding: 10px 10px;
}

span.menu_title a, a.share {
  font-size: 16px;
  line-height: 34px;

}

.quickmenu {
  position: absolute; /* important */
  top: -251px;
  right: 46px;
  width: 260px;
  height: 250px;
  background: #e4e4e4;
	border-top: 1px solid #a4a4a4;
  border-left: 1px solid #a4a4a4; 
  border-right: 1px solid #a4a4a4;
  /* CSS3 */
  -moz-box-shadow: 2px -3px 5px #c5c5c5, -3px 0px 5px #cdcdcd;
  -khtml-shadow: 2px -3px 5px #c5c5c5, -3px 0px 5px #cdcdcd;
  -webkit-box-shadow: 2px -3px 5px #c5c5c5, -3px 0px 5px #cdcdcd;
  /* CSS3 end */
  display: none; /* important */
}


.quickmenu ul {
  padding-top: 20px;
}

.quickmenu ul li  {
  border-bottom: 1px solid #989898;    
  padding: 5px 10px;
  margin: 0 15px 0 15px;
}

.quickmenu ul li a {
  color: #989898;
  display: block;
}

.quickmenu ul li a:hover {
  color: #666;
}
			
		</style>
		
		<script type="text/javascript">

$(document).ready(function(){
	
  //hide toolbar and make visible the 'show' button
	$("span.downarr a").click(function() {
	    $("#toolbar").slideToggle("fast");
	    $("#toolbarbut").fadeIn("slow");    
	  });
  
  //show toolbar and hide the 'show' button
  $("span.showbar a").click(function() {
    $("#toolbar").slideToggle("fast");
    $("#toolbarbut").fadeOut();    
  });
  
  //show tooltip when the mouse is moved over a list element 
  $("ul#social li").hover(function() {
		$(this).find("div").fadeIn("fast").show(); //add 'show()'' for IE
    $(this).mouseleave(function () { //hide tooltip when the mouse moves off of the element
        $(this).find("div").hide();
    });
  });
  
  //don't jump to #id link anchor 
  $(".facebook, .twitter, .delicious, .digg, .rss, .stumble, .menutit, .menuit2, span.downarr a, span.showbar a").click(function() {
   return false;                                         
	});
	
  //show quick menu on click 
	$("span.menu_title a").click(function() {
		if($(this).parent().next(".quickmenu").is(':hidden')){ //if quick menu isn't visible 
		 	$(this).parent().parent().find(".quickmenu").fadeOut("fast"); 
			$(this).parent().next(".quickmenu").fadeIn("fast"); //show menu on click
		} else if ($(this).parent().next(".quickmenu").is(':visible')) { //if quick menu is visible 
	      $(this).parent().next(".quickmenu").fadeOut("fast"); //hide menu on click
	    }
	});


	//hide menu on casual click on the page
	$(document).click(function() {
	//		$(".quickmenu").fadeOut("fast");
	});
	
	$('.quickmenu').click(function(event) { 
		event.stopPropagation(); //use .stopPropagation() method to avoid the closing of quick menu panel clicking on its elements 
	});	
	
	
});
	
</script>
<script type="text/javascript">var switchTo5x=true;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">stLight.options({publisher: "ur-7f6ab50f-914c-5484-76be-a17f22e1d26"}); </script>
<div id="toolbarbut"> <!-- hide button -->
<span class="showbar"><a href="#">show bar</a></span>
</div>

<div id="toolbar"> <!-- toolbar container -->

<div class="leftside"> <!-- all things in floating left side -->
  <ul id="social">
    <li><a id="socialcloudz" href="#"></a></li>
    <li><a class="share" href="#">Share</a>
      <div id="tipshare">
       		<span class='st_fblike_hcount' displayText='Facebook Like'></span>
			<span class='st_twitter_hcount' displayText='Tweet'></span>
			<span class='st_plusone_hcount' displayText='Google +1'></span>
			<span class='st_email_hcount' displayText='Email'></span>
      </div>  
    </li>
  </ul>
</div>


<div class="rightside"> <!-- all things in floating left side -->
  <span class="downarr"> <!-- hide button -->
  <a href="#"></a>
  </span>
  <span class="menu_title">
    <a class="menutit"><img src="images/user.png"></a> <!-- quick menu title -->
  </span>
   <div class="quickmenu">
    <ul> <!-- quick menu list -->
      <li><a href="#">Billie Blaze</a></li>
     
    </ul> 
  </div>
  <span class="menu_title">
    <a class="menutit"><img src="images/email.png"></a> <!-- quick menu title -->
  </span>
  <div class="quickmenu">
    <ul> <!-- quick menu list -->
      <li><a href="#">Email</a></li>
     
    </ul> 
  </div>
   <span class="menu_title">
    <a class="menutit"><img src="images/cog_edit.png"></a> <!-- quick menu title -->
  </span>
  <div class="quickmenu">
    <ul> <!-- quick menu list -->
      <li><a href="">Edit</a></li>
     
    </ul> 
  </div>
  
  <span class="menu_title">
    <a class="menutit"><img src="images/briefcase.png"></a> <!-- quick menu title -->
  </span>
  <div class="quickmenu">
    <ul> <!-- quick menu list -->
      <li><a href="#">Admin</a></li>
     
    </ul> 
  </div>
  
  <span class="menu_title">
    <a class="menutit"><img src="images/chart_curve.png"></a> <!-- quick menu title -->
  </span>
  <div class="quickmenu">
    <ul> <!-- quick menu list -->
      <li><a href="#">Statistics</a></li>
     
    </ul> 
  </div>
  
</div>

</div>

