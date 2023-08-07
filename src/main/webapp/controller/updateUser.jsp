<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB" %>
<%
	String id = request.getParameter("idUser");
	String nombre = request.getParameter("nombreUpd");
	String apellido = request.getParameter("apellidoUpd");
	String correo = request.getParameter("correoUpd");
			
	try {
		ConexionDB con = new ConexionDB();
		Statement st = con.conectar();
		Integer okUpdate = st.executeUpdate("update usuarios set Nombre = '"+nombre+"', Apellido = '"+apellido+"', Mail = '"+correo+"' where idUsuario = '"+id+"'");
		
		if(okUpdate == 1) {
			response.sendRedirect("../views/usuarios.jsp");
		} else {
			response.sendRedirect("../views/usuarios.jsp?m=e%20upd%20us");
		}
		
	} catch(Exception e) {
		response.sendRedirect("../views/usuarios.jsp?m=e%20upd%20us");
		
	}
%>