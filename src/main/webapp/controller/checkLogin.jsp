<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB" %>
<%
	String user = request.getParameter("user");
	String password = request.getParameter("password");

	ConexionDB con = new ConexionDB();
	Statement st = con.conectar();
	ResultSet rs = st.executeQuery("select * from usuarios where Mail = '"+user+"' and Clave = '"+password+"'");
	
	if(rs.next()){
		response.sendRedirect("../views/inicio.jsp");
	} else {
		response.sendRedirect("./../index.jsp?m=u%20o%20p%20i");
	}
%>