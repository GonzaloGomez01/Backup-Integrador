<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB" %>
<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String correo = request.getParameter("correo");
	String pass = request.getParameter("pass");
		
	try {
		ConexionDB con = new ConexionDB();
		Statement st = con.conectar();
		Integer okInsert = st.executeUpdate("insert into usuarios (Nombre, Apellido, Mail, Clave) values ('"+nombre+"', '"+apellido+"', '"+correo+"', '"+pass+"')");
		
		if(okInsert == 1) {
			response.sendRedirect("../views/usuarios.jsp");
		} else {
			response.sendRedirect("../views/usuarios.jsp?m=e%20ins%20us");
		}
		
	} catch(Exception e) {
		response.sendRedirect("../views/usuarios.jsp?m=e%20ins%20us");
		
	}
%>