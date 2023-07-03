<!doctype html>

<%@page import="java.sql.Statement" %>
<%@page import="db.ConexionDB" %>
<%@page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>GU | Usuarios</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles/style.css">
        <link rel="icon" href="../images/user-icon.svg">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <script src="../scripts/script.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>


        <div class="container pt-5">
            <div class="d-flex justify-content-end my-2">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar usuario</button>
            </div>

            <!-- Modal -->
            
	            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	                <div class="modal-dialog modal-dialog-scrollable">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar usuario</h1>
	                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                        </div>	                        
		                        <div class="modal-body">
		                        	<form action="../controller/insertUser.jsp" method="post" class="needs-validation" novalidate>
			                        	<div class="form-group has-validated">
				                            <input type="text" name="nombre" id="nombre" class="form-control mb-2" placeholder="Nombre" required>
				                            <div class="invalid-feedback mb-2">
            									Ingrese el nombre
            								</div>
				                        </div>
				                        <div class="form-group has-validated">
				                            <input type="text" name="apellido" id="apellido" class="form-control mb-2" placeholder="Apellido" required>
				                            <div class="invalid-feedback mb-2">
            									Ingrese el apellido
            								</div>
				                        </div>
				                        <div class="form-group has-validated">
				                            <input type="email" name="correo" id="correo" class="form-control mb-2" placeholder="Correo Electrónico" required>
				                            <div class="invalid-feedback mb-2">
            									Ingrese el correo electrónico
            								</div>
										</div>
										<div class="form-group has-validated">                         
				                            <input type="password" name="pass" id="pass" class="form-control mb-2" placeholder="Contraseña" required>
				                            <div class="invalid-feedback mb-2">
            									Ingrese la contraseña
            								</div>
				                        </div>
				                        <div class="form-group">
				                            <input type="password" class="form-control mb-2" placeholder="Confirmar Contraseña">
				                        </div>
				                        <div class="d-flex justify-content-end">  
					                        <button type="button" class="btn btn-secondary m-2" data-bs-dismiss="modal">Cancelar</button>
			                            	<button type="submit" class="btn btn-primary m-2">Agregar</button>
		                            	</div>
		                            </form>				                	            
		                        </div>          
	                    </div>
	                </div>
	            </div>
			
            <!-- Tabla -->
            <div class="table-responsive">
            	<table class="table text-center w-100">
	                <thead>
	                    <tr class="table-light">
	                        <th scope="col">Nombre</th>
	                        <th scope="col">Apellido</th>
	                        <th scope="col">Correo Electrónico</th>
	                        <th scope="col">Acciones</th>
	                    </tr>
	                </thead>
	                <tbody class="table-group-divider">
	                    <%
	                        ConexionDB conn = new ConexionDB();
	                        Statement st = conn.conectar();
	                        ResultSet rs = st.executeQuery("select * from usuarios");
	
	                        while(rs.next()){
	                            out.println("<tr>");
	                                                    
	                            out.println("<td>");
	                            out.println(rs.getString("Nombre"));
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            out.println(rs.getString("Apellido"));
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            out.println(rs.getString("Mail"));
	                            out.println("</td>");
	                                                        
	                            out.println("<td>");
	                            out.println("<button class='btn btn-sm btn-warning rounded-circle mx-1'><i class='bi bi-pencil-fill text-white'></i></button>");
	                            out.println("<button class='btn btn-sm btn-danger rounded-circle mx-1'><i class='bi bi-trash3-fill'></i></button>");
	                            out.println("</td>");
	                            
	                            out.println("</tr>");
	                        }
	                    %>
	                </tbody>
            	</table>
            </div>            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="../scripts/validacionLogin.js"></script>
    </body>
</html>
