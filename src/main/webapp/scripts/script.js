 window.onload = function() {
      var fileName = window.location.pathname.split("/").pop();
      
      var barraNavegacion = document.getElementById('barraNav');
	  var lista = barraNavegacion.getElementsByTagName('ul')[0];
	  var liEliminar = lista.getElementsByTagName('li')[0];
	  
	  
      if (fileName == "usuarios.jsp") {
        document.getElementById("title").innerHTML = "Usuarios";
        document.getElementById("itemGesUsuario").className = "nav-link dropdown-toggle text-white active";
      } else if (fileName == "productos.jsp") {
        document.getElementById("title").innerHTML = "Productos";
        document.getElementById("itemGesProd").className = "nav-link dropdown-toggle text-white active";
      } else if (fileName == "proveedores.jsp") {
        document.getElementById("title").innerHTML = "Proveedores"; 
        document.getElementById("itemGesProd").className = "nav-link dropdown-toggle text-white active";
      } else if (fileName == "ventas.jsp") {
        document.getElementById("title").innerHTML = "Ventas";
        document.getElementById("itemVent").className = "nav-link text-white active";
      } else if (fileName == "inicio.jsp") {
        document.getElementById("title").innerHTML = "Inicio";
        lista.removeChild(liEliminar);
      } else {
        document.getElementById("title").innerHTML = "";
      }
};