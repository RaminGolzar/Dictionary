$(document).ready(function(){
	var pathSearch = 'http://localhost/my_projects/testing/ci_dictionary/public/Panel/NotTranslate/operations';
	
	// ------------------------------------------------
	
	// this code for click in td in html table
	// get td text and set txtWord for add new word
	$('td').click(function(e){
		$('#txtWord').val($(this).text()).focus();
	})
	
	// ----------------------------------------------
	
	
	// search by click submit button
	$('#btnAdd').click(function(){
		search_word (pathSearch);
	})
	
	// search by press enter
	$('#txtWord').keypress(function(e){
		if (e.keyCode == 13) {
			search_word (pathSearch);
		}
	})
})

function search_word(path) {
	$.ajax({
		url:path,
		type:'post',
		/* contentType:false,
		processData:false,
		catche:false, */
		data:{
			'word':$('#txtWord').val(),
			'translate':$('#txtTranslate').val()
		},
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