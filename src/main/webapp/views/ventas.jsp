<!doctype html>

<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sales Manager</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/style.css">
        <link rel="icon" href="../images/sales-icon.svg">
    </head>
    <body>
        <div class="bg-dark">
            <h1 class="fs-3 p-3 text-center text-white">Ventas</h1>
            <div class="bg-danger p-1 fs-6">
                <ul class="nav nav-underline justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="./../index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Gestión de Usuarios
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="usuarios.jsp">Usuarios</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Gestión de Productos
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="productos.jsp">Productos</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="proveedores.jsp">Proveedores</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white active" aria-current="page" href="#">Ventas</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container pt-5">
            <table class="table table-hover w-100 table-sm">
                <thead>
                    <tr class="table-secondary">
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider table-light">
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td colspan="2">Larry the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>
