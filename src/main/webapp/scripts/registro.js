function fortPass() {
    let pass=document.getElementById("pass").value

    //regexp que valida una mayúscula y mayor a 8 caracteres
    let regExpPass=new RegExp("(?=.*[A-Z]).{8,}")
    
    if (pass.trim() === "") {
		document.getElementById("msjPass").innerHTML="Debe ingresar la contraseña"
        document.getElementById("msjPass").className="text-danger small fw-bold mb-2" 
	} else{
		if (regExpPass.test(pass)) {
	        document.getElementById("msjPass").innerHTML=""
	        document.getElementById("msjPass").className=""        
	    } else {
	        document.getElementById("msjPass").innerHTML="Debe contener al menos una mayúscula y ser mayor a 8 caractéres"
	        document.getElementById("msjPass").className="text-danger small fw-bold mb-2"        
	    }	
	}
}

function primerLetraMayuscula(idInput, idDivMsj) {
    let campo = document.getElementById(idInput).value

	// Expresión regular para verificar si la primera letra es mayúscula
    let regex = /^[A-Z]/;
    
    if (campo.trim() === ""){
		document.getElementById(idDivMsj).innerHTML="Debe ingresar el " + idInput;
	   	document.getElementById(idDivMsj).className="text-danger small fw-bold mb-2";		
	} else {
		if (!regex.test(campo)){
			if (idInput === "nombre"){
				document.getElementById(idDivMsj).innerHTML="El nombre debe comenzar con mayúscula";
	        	document.getElementById(idDivMsj).className="text-danger small fw-bold mb-2";
			} 
			else if (idInput === "apellido"){
				document.getElementById(idDivMsj).innerHTML="El apellido debe comenzar con mayúscula";
	        	document.getElementById(idDivMsj).className="text-danger small fw-bold mb-2";			
			}
		} else {
			document.getElementById(idDivMsj).innerHTML="";
	       	document.getElementById(idDivMsj).className="";			
		}		
	}
}

function matchPass(){
    let pass = document.getElementById("pass").value;
    let passConfirm = document.getElementById("passConfirm").value;
    
    if (passConfirm.trim() === "") {
		document.getElementById("msjPassConfirm").innerHTML="Debe ingresar confirmar la contraseña"
        document.getElementById("msjPassConfirm").className="text-danger small fw-bold mb-2" 
	} else {
	    if (pass === passConfirm){
			document.getElementById("msjPassConfirm").innerHTML="";
		    document.getElementById("msjPassConfirm").className="";			
		} else {
			document.getElementById("msjPassConfirm").innerHTML="No coincide con la contraseña ingresada";
		    document.getElementById("msjPassConfirm").className="text-danger small fw-bold mb-2";			
		}	
	}
}

function validarCorreo(){
	let correo = document.getElementById("correo").value;
	
	if (!correo.includes("@")) {
        document.getElementById("msjMail").innerHTML="El correo electrónico debe contener un @";
        document.getElementById("msjMail").className="text-danger small fw-bold mb-2";
    } else if(!correo.includes(".com")) {
        document.getElementById("msjMail").innerHTML="El correo electrónico debe finalizar en .com";
        document.getElementById("msjMail").className="text-danger small fw-bold mb-2";
        
    } else {
        document.getElementById("msjMail").innerHTML="";
        document.getElementById("msjMail").className="";  
    }

}

function validarCamposVacios() {
	let nombre = document.getElementById("nombre").value;
	let apellido = document.getElementById("apellido").value;
	let correo = document.getElementById("correo").value;
    let pass = document.getElementById("pass").value;
    let passConfirm = document.getElementById("passConfirm").value;
    let regex = /^[A-Z]/;
    
    if (nombre.trim() === "" && apellido.trim() === "" && correo.trim() === "" && pass.trim() === "" && passConfirm.trim() === ""){
		document.getElementById("msjNombre").innerHTML="Debe ingresar el nombre";
        document.getElementById("msjNombre").className="text-danger small fw-bold mb-2";	
		document.getElementById("msjApellido").innerHTML="Debe ingresar el apellido";
        document.getElementById("msjApellido").className="text-danger small fw-bold mb-2";	
		document.getElementById("msjMail").innerHTML="Debe ingresar el correo electrónico";
        document.getElementById("msjMail").className="text-danger small fw-bold mb-2";	
		document.getElementById("msjPass").innerHTML="Debe ingresar la contraseña";
        document.getElementById("msjPass").className="text-danger small fw-bold mb-2";
		document.getElementById("msjPassConfirm").innerHTML="Debe ingresar confirmar la contraseña"
        document.getElementById("msjPassConfirm").className="text-danger small fw-bold mb-2" 
        return false;
	}
    
    if (nombre.trim() === ""){
		document.getElementById("msjNombre").innerHTML="Debe ingresar el nombre";
        document.getElementById("msjNombre").className="text-danger small fw-bold mb-2";
        return false;
	} else {
		if (!regex.test(nombre)){
			document.getElementById("msjNombre").innerHTML="El nombre debe comenzar con mayúscula";
	        document.getElementById("msjNombre").className="text-danger small fw-bold mb-2";	
	        return false;		
		} else {
			document.getElementById("msjNombre").innerHTML="";
        	document.getElementById("msjNombre").className="";	
		}
	}
	
	if (apellido.trim() === ""){
		document.getElementById("msjApellido").innerHTML="Debe ingresar el apellido";
        document.getElementById("msjApellido").className="text-danger small fw-bold mb-2";
        return false;
	} else {
		if (!regex.test(apellido)){
			document.getElementById("msjApellido").innerHTML="El apellido debe comenzar con mayúscula";
	        document.getElementById("msjApellido").className="text-danger small fw-bold mb-2";	
	        return false;		
		} else {
			document.getElementById("msjApellido").innerHTML="";
        	document.getElementById("msjApellido").className="";	
		}
	}
	
	if (correo.trim() === ""){
		document.getElementById("msjMail").innerHTML="Debe ingresar el correo electrónico";
        document.getElementById("msjMail").className="text-danger small fw-bold mb-2";		
        return false;
	} else {
		if (!correo.includes("@")) {
	        document.getElementById("msjMail").innerHTML="El correo electrónico debe contener un @";
	        document.getElementById("msjMail").className="text-danger small fw-bold mb-2";
	        return false;
	    } else if(!correo.includes(".com")) {
	        document.getElementById("msjMail").innerHTML="El correo electrónico debe finalizar en .com";
	        document.getElementById("msjMail").className="text-danger small fw-bold mb-2";
	        return false;	        
	    } else {
	        document.getElementById("msjMail").innerHTML="";
	        document.getElementById("msjMail").className="";  
	    }	
	}
	
	if (pass.trim() === "") {
		document.getElementById("msjPass").innerHTML="Debe ingresar la contraseña";
        document.getElementById("msjPass").className="text-danger small fw-bold mb-2";
        return false;
	} else {
		document.getElementById("msjPass").innerHTML="";
        document.getElementById("msjPass").className="";
	}
	
	return true;
}