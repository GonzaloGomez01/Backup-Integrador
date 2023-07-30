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
                <button type="button" class="btn btn-personalizado" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar usuario</button>
            </div>

            <!-- Modal -->
            
	            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	                <div class="modal-dialog modal-dialog-scrollable">
	                    <div class="modal-content">
	                        <div class="modal-header bg-success text-white" data-bs-theme="dark">
	                            <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar usuario</h1>
	                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                        </div>
	                        <form action="../controller/insertUser.jsp" onsubmit="return validarCamposVacios()" method="post">	                        
		                        <div class="modal-body">		
									<input type="text" name="nombre" id="nombre" onkeyup="primerLetraMayuscula('nombre', 'msjNombre')" class="form-control form-control-sm mb-2" placeholder="Nombre">
									<div id="msjNombre"></div>                 	
									<input type="text" name="apellido" id="apellido" onkeyup="primerLetraMayuscula('apellido', 'msjApellido')" class="form-control form-control-sm mb-2" placeholder="Apellido">
									<div id="msjApellido"></div>
									<input type="email" name="correo" id="correo" onkeyup="validarCorreo()" class="form-control form-control-sm mb-2" placeholder="Correo Electrónico">
									<div id="msjMail"></div>
									<input type="password" name="pass" id="pass" onkeyup="fortPass()" class="form-control form-control-sm mb-2" placeholder="Contraseña">
				                    <div id="msjPass"></div>
									<input type="password" name="passConfirm" id="passConfirm" onkeyup="matchPass()" class="form-control form-control-sm mb-2" placeholder="Confirmar Contraseña">
									<div id="msjPassConfirm"></div>
		                        </div>
		                        <div class="modal-footer">  
					            	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			                    	<input type="submit" class="btn btn-success" value="Agregar">
		                        </div>	
		                	</form>          
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
	                            
	                            Integer id = rs.getInt("idUsuario");
	                                                    
	                            out.println("<td>");
	                            String nombre = rs.getString("Nombre");
	                            out.println(nombre);
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            String apellido = rs.getString("Apellido");
	                            out.println(apellido);
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            String mail = rs.getString("Mail");
	                            out.println(mail);
	                            out.println("</td>");
	                                                        
	                            out.println("<td>");
	                            out.println("<button class='btn btn-sm btn-primary rounded-circle mx-1' data-bs-toggle='modal' data-bs-target='#updateModal' id='"+id+"' nombre='"+nombre+"' apellido='"+apellido+"' mail='"+mail+"'><i class='bi bi-pencil-fill text-white'></i></button>");
	                            out.println("<button class='btn btn-sm btn-danger rounded-circle mx-1' data-bs-toggle='modal' data-bs-target='#deleteModal' id='"+id+"' nombre='"+nombre+"' apellido='"+apellido+"'><i class='bi bi-trash3-fill'></i></button>");
	                            out.println("</td>");
	                            
	                            out.println("</tr>");
	                        }
	                    %>
	                </tbody>
            	</table>
            </div>            
        </div>
		
		<!-- delete modal -->
		<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header bg-danger text-white" data-bs-theme="dark">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar usuario</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      	<form action="../controller/deleteUser.jsp" method="post">
			    	<input type="hidden" name="idUser" id="idUser">
				      <div class="modal-body text-center">
				          <div class="mb-3">
				            <label for="recipient-name" class="col-form-label">¿Desea eliminar el usuario?</label>
				            <div id="dataUser" class="text-danger"></div>
				          </div>			        
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
				        <input type="submit" class="btn btn-danger" value="Eliminar">
				      </div>
			    </form>
		    </div>
		  </div>
		</div>
		
		<!-- update modal -->
		<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header bg-primary text-white" data-bs-theme="dark">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar usuario</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      	<form action="../controller/updateUser.jsp" method="post" class="needs-validation" novalidate>
			    	<input type="hidden" name="idUser" id="idUser">
				      <div class="modal-body">
	                  	<div class="form-group has-validated">
	                  		<label for="nombre" class="form-label">Nombre:</label>
	                        <input type="text" name="nombre" id="nombre" class="form-control form-control-sm mb-2" required>
	                        <div class="invalid-feedback mb-2">
	    						Ingrese el nombre
	   						</div>
	                   	</div>
	                    <div class="form-group has-validated">
	                    	<label for="apellido" class="form-label">Apellido:</label>
	                    	<input type="text" name="apellido" id="apellido" class="form-control form-control-sm mb-2" required>
	                    	<div class="invalid-feedback mb-2">
	       						Ingrese el apellido
	       					</div>
	                    </div>
	                    <div class="form-group has-validated">
	                    	<label for="mail" class="form-label">Correo electrónico:</label>
	                    	<input type="email" name="correo" id="correo" class="form-control form-control-sm mb-2" required>
	                    	<div class="invalid-feedback mb-2">
	       						Ingrese el correo electrónico
	       					</div>
						</div>		        
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
				        <input type="submit" class="btn btn-primary" value="Modificar">
				      </div>
			    </form>
		    </div>
		  </div>
		</div>
		
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="../scripts/validacionLogin.js"></script>
		<script src="../scripts/delUsuario.js"></script>        
		<script src="../scripts/updUsuario.js"></script>
		<script src="../scripts/registro.js"></script>        
    </body>
</html>
