$(document).ready(function(){
	var pathSearch = 'http://localhost/my_projects/testing/ci_dictionary/public/Panel/ManageTranslate/search';
	
	// search by click submit button
	$('#btn_search').click(function(){
		search_word (pathSearch);
	})
	
	// search by press enter
	$('#txt_search').keypress(function(e){
		if (e.keyCode == 13) {
			search_word (pathSearch);
		}
	})
	
	// like search
	// $('#txt_search').keyup(function(e){
		// if (e.keyCode >= 65 && e.keyCode <= 90) {
			// search_like (pathSearch);
		// }
	// })
})

function search_word(path) {
	$.ajax({
		url:path,
		type:'post',
		/* contentType:false,
		processData:false,
		catche:false, */
		data:{'word':$('#txt_search').val()},
		success:function(responce) {
			$('#title').text(responce);
		},
		error:function() {
			$('title').text('AJAX ERROR');
		}
	})
}

function search_like(path) {
	$.ajax({
		url:path,
		type:'post',
		/* contentType:false,
		processData:false,
		catche:false, */
		data:{'autocomplete':$('#word').val()},
		success:function(responce) {
			$('#word-list').html(responce);
		},
		error:function() {
			$('title').text('AJAX ERROR');
		}
	})
}