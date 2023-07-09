<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB" %>
<%
	String id = request.getParameter("idUser");
		
	try {
		ConexionDB con = new ConexionDB();
		Statement st = con.conectar();
		Integer okDelete = st.executeUpdate("delete from usuarios where idUsuario = '"+id+"'");
		
		if(okDelete == 1) {
			response.sendRedirect("../views/usuarios.jsp");
		} else {
			response.sendRedirect("../views/usuarios.jsp?m=e%20eli%20us");
		}
		
	} catch(Exception e) {
		response.sendRedirect("../views/usuarios.jsp?m=e%20eli%20us");
		
	}
%>