function isCharacter(evt){
	var ch = String.fromCharCode(evt.which);
	
	if(!(/[A-Za-z]/.test(ch))){
		evt.preventDefault();
	}
}

function isNumberKey(evt){
	var ch = String.fromCharCode(evt.which);
	
	if(!(/[0-9]/.test(ch))){
		evt.preventDefault();
	}
}

$('#registrationForm').validate();



