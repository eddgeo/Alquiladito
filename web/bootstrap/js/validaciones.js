function validarLogin(){
    if(document.all.usuario.value===""){
        alert("Introduzca el usario");
        document.all.usuario.focus();
        return false;
    }
     if(document.all.password.value===""){
        alert("Introduzca el password");
        document.all.password.focus();
        return false;
    }
}