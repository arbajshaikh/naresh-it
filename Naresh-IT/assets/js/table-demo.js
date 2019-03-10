var studentTable;

jQuery(document).ready(function() {
		
	studentTable = jQuery('#studentListTable').dataTable({
		"bJQueryUI" : true,
	    "sPaginationType" : "full_numbers",
	    "bRetrieve" : true,
		"bFilter" : true,
	    "iDisplayLength": 10,
		"bProcessing" : true,
		"bServerSide" : false,
      
		"aoColumns" : [ {
			"bSearchable" : false,
			"bVisible" : false,
			"asSorting" : [ "asc" ]
		}, {
			"sWidth" : "20%",
			"bSortable" : true
		}, {
			"sWidth" : "20%",
			"bSortable" : true
		}, {
			"sWidth" : "20%",
			"bSortable" : true
		}, {
			"sWidth" : "20%",
			"bSortable" : true
		}, {
			"sWidth" : "20%",
			"bSortable" : true
		}]

	});
	
	//jQuery('.dataTables_length').hide();
	//$("#NewsListTable_length").hide();
	
	jQuery(".ui-corner-br").addClass('ui-widget-header_custom ');

});

