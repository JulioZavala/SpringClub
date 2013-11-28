$(document).ready(function() {

	//------------- Login page simple functions -------------//
 	$("html").addClass("loginPage");

 	wrapper = $(".login-wrapper");
 	barBtn = $("#bar .btn");



	//------------- Validation -------------//
	$("#login-form").validate({ 
		rules: {
			user: {
				required: true,
				minlength: 5
			}, 
			password: {
				required: true,
				minlength: 6
			}
		}, 
		messages: {
			user: {
				required: "Por favor ingrese un Usuario",
				minlength: "El Usuario debe tener mínimo 5 caracteres de longitud"
			},
			password: {
				required: "Por favor ingrese una Contraseña",
				minlength: "La Contraseña debe tener mínimo 6 caracteres de longitud"
			}
		},
		submitHandler: function(form){
	        var btn = $('#loginBtn');
	        btn.removeClass('btn-primary');
	        btn.addClass('btn-danger');
	        btn.text('Checking ...');
	        btn.attr('disabled', 'disabled');
	        setTimeout(function() {
	        	btn.removeClass('btn-danger');
	        	btn.addClass('btn-success');
	        	btn.text('User find ...');
	        }, 1500);
	        setTimeout(function () {
	        	form.submit();
	        }, 2000);
		}
	});

});