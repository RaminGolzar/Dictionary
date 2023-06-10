$(document).ready(function(){
	var sendPath = 'http://localhost/my_projects/testing/ci_dictionary/public/Panel/ManageUsers/operations';
	
	// for show user profile
	$('.btn-click').click(function(){
		// get input hidden id name by html table
		var id = $(this).parent().parent().parent().children().eq(0).html();
		
		sendID (sendPath , $(this).val() , id);
		
		// change block button value
		if($(this).val() == 'Block') {
			$(this).val('Disblock');
		} else if ($(this).val() == 'Disblock') {
			$(this).val('Block');
		}
	})
	
	// -----------------------------------------
	
	
	$('#modal').click(function(){
		$(this).fadeOut();
	})
})

// send user id & button value for operations (show profile , block user , remove account)
//
// @ param btnVal - Button value for detect operation
// @ param hiddenID - for detect input hidden id name
function sendID(path,btnVal,hiddenID) {
	$.ajax({
		url:path,
		type:'post',
		/* contentType:false,
		processData:false,
		catche:false, */
		data:{'id':hiddenID , 'op':btnVal},
		success:function(responce) {
			showDialog(responce);
		},
		error:function() {
			$('title').text('AJAX ERROR');
		}
	})
}

function showDialog(responce) {
	$('#modal-content').html(responce).fadeIn();
}