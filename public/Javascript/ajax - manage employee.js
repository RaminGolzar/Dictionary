$(document).ready(function(){
	var path = 'http://localhost/my_projects/testing/ci_dictionary/public/Panel/ManageEmployee/process';
	
	$('.submit').click(function(){
		employeeID = $(this).parent().parent().children('#employee_id').val();
		
		operation = $(this).val();
		
		switch_operation($(this), path, employeeID, operation);
	})
	
	/* ========================================== */
	
	$('#modal').click(function(){
		$(this).hide();
	})
})

function switch_operation (submitObject, path, employeeID, operation) {
	if (operation == 'Remove') {
		remove_employee(path , employeeID , operation);
	} else if (operation == 'Block' || operation == 'Unblock') {
		toggle_block(submitObject, path, employeeID, operation);
	} else if (operation == 'Profile') {
		show_profile_info(path, employeeID, operation);
	}
}

function remove_employee (path, employeeID, operation) {
	$.ajax({
		url:path,
		type:'post',
		data:{'employeeID':employeeID , 'operation':operation},
		success:function(responce) {
			$('title').html(responce);
		},
		error:function() {
			$('title').text('failed');
		}
	})
}

function toggle_block (subObject, path, employeeID, operation) {
	$.ajax({
		url:path,
		type:'post',
		data:{'employeeID':employeeID , 'operation':operation},
		success:function(responce) {
			subObject.val(responce);
		},
		error:function() {
			$('title').text('failed');
		}
	})
}

function show_profile_info (path, employeeID, operation) {
	$.ajax({
		url:path,
		type:'post',
		data:{'employeeID':employeeID , 'operation':operation},
		success:function(responce) {
			$('#modal-content').html(responce);
			
			$('#modal').fadeIn();
		},
		error:function() {
			$('title').text('failed');
		}
	})
}
