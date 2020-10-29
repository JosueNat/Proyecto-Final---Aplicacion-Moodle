function validar() {
    var nombres, apellidos, email,empresa,telefono, expresion;
    nombres = document.getElementById("nombres").value;
    apellidos = document.getElementById("apellidos").value;
    email = document.getElementById("email").value;
    empresa = document.getElementById("empresa").value;
    telefono = document.getElementById("telefono").value;
    expresion = /\w+@\w+\.+[a-z]/;

    if (nombres === "" || apellidos === "" || email === "" || empresa === "" || telefono === "") {
        alert("No ha ingresado todos los campos");
        return false;
    } else if (nombres.length > 15) {
        alert("Sus nombres son muy grandes");
        return false;
    } else if (apellidos.length > 25) {
        alert("Sus apellidos son muy grandes");
        return false;
    } else if (email.length > 100) {
        alert("El email es muy extenso");
        return false;
    } else if (!expresion.test(email)) {
        alert("El email no es valido");
        return false;
    } else if (empresa.length < 5 && usuario > 15) {
        alert("El usuario no es válido");
        return false;
    } else if (telefono.length > 10) {
        alert("Su número de telefono es muy grande");
        return false;
    } else if (isNaN(telefono)) {
        alert("El telefono ingresado no es un número");
        return false;
    }

}