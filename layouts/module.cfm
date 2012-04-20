<cfoutput>
<div class="portlet mod">
	<div class="portlet-header hd">
		
		<div>
			<span class="ui-icon ui-icon-carat-1-w"></span>
			Feeds
		</div>
		<div class="ui-state-default toolbar">
			<span class="move ui-icon ui-icon-arrow-4-diag"></span>
			<span class="edit ui-icon ui-icon-wrench"></span>
			<span class="delete ui-icon ui-icon-trash"></span>
		</div>
	</div>
	<div class="portlet-content bd">
		#renderView()#
		<br style="clear:both">
	</div>
	<div class="portlet-footer ft"></div>
</div>
</cfoutput>