<!doctype html>

<%@page import="java.sql.Statement" %>
<%@page import="db.ConexionDB" %>
<%@page import="java.sql.ResultSet" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>GP | Productos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles/style.css">
        <link rel="icon" href="../images/product-icon.svg">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <script src="../scripts/script.js"></script>
    </head>
    <body>
		<jsp:include page="menu.jsp"></jsp:include>

        <div class="container pt-5">
            <div class="d-flex justify-content-end my-2">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar producto</button>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar producto</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <label for="nombreProducto" class="form-label">Nombre</label>
                            <input type="text" class="form-control mb-2">
                            <label for="descripcionProducto" class="form-label">Descripción</label>
                            <input type="text" class="form-control mb-2">
                            <label for="stockProducto" class="form-label">Cantidad</label>
                            <input type="number" class="form-control mb-2">
                            <label for="precioProducto" class="form-label">Precio</label>
                            <input type="number" class="form-control mb-2">
                            <label for="proveedorProducto" class="form-label">Proveedor</label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Seleccione un proveedor</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary">Agregar</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tabla -->
            <div class="table-responsive">
                <table class="table text-center w-100">
                    <thead>
                        <tr class="table-light">
                            <th scope="col">Proveedor</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Descripción</th>
                            <th scope="col">Stock</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <%
	                        ConexionDB conn = new ConexionDB();
	                        Statement st = conn.conectar();
	                        ResultSet rs = st.executeQuery("select * from vw_producto_select");
	
	                        while(rs.next()){
	                            out.println("<tr>");
	                                                    
	                            out.println("<td>");
	                            out.println(rs.getString("Proveedor"));
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            out.println(rs.getString("Nombre"));
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            out.println(rs.getString("Descripcion"));
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            out.println(rs.getInt("Stock"));
	                            out.println("</td>");
	                            
	                            out.println("<td>");
	                            out.println("$" + rs.getInt("Precio"));
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
    	<script src="../scripts/cerrarSesion.js"></script>
    </body>
</html>
