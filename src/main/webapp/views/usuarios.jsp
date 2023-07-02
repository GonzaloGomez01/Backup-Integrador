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
                            <label for="nombreUsuario" class="form-label">Nombre</label>
                            <input type="text" class="form-control mb-2">
                            <label for="apellidoUsuario" class="form-label">Apellido</label>
                            <input type="text" class="form-control mb-2">
                            <label for="correoUsuario" class="form-label">Correo Electrónico</label>
                            <input type="email" class="form-control mb-2">
                            <label for="uUsuario" class="form-label">Usuario</label>
                            <input type="text" class="form-control mb-2">
                            <label for="claveUsuario" class="form-label">Contraseña</label>
                            <input type="password" class="form-control mb-2">
                            <label for="confirmarclaveUsuario" class="form-label">Confirmar Contraseña</label>
                            <input type="password" class="form-control mb-2">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary">Agregar</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tabla -->
            <table class="table text-center w-100">
                <thead>
                    <tr class="table-light">
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Correo Electrónico</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Editar</th>
                        <th scope="col">Eliminar</th>
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
                            out.println(rs.getString("Usuario"));
                            out.println("</td>");
                            
                            out.println("<td>");
                                out.println("<button class='btn btn-sm btn-warning rounded-circle mx-1'><i class='bi bi-pencil-fill text-white'></i></button>");
                            out.println("</td>");
                            
                            out.println("<td>");                            
                            out.println("<button class='btn btn-sm btn-danger rounded-circle mx-1'><i class='bi bi-trash3-fill'></i></button>");
                            out.println("</td>");
                            
                            out.println("</tr>");
                        }
                    %>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="../scripts/cerrarSesion.js"></script>
    </body>
</html>
