<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark" id="barraNav">
    <div class="container-fluid">
        <a class="navbar-brand" id="title"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 nav-underline">
                <li class="nav-item">
                    <a class="nav-link text-white" aria-current="page" id="itemInicio" href="inicio.jsp">Inicio</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" aria-current="page" id="itemGesUsuario" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Gestión de Usuarios
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="dropdown-item text-white" href="usuarios.jsp">Usuarios</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" aria-current="page" id="itemGesProd" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Gestión de Productos
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="dropdown-item text-white" href="productos.jsp">Productos</a>
                        </li>
                        <li>
                            <a class="dropdown-item text-white" href="proveedores.jsp">Proveedores</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" aria-current="page" id="itemVent" href="ventas.jsp">Ventas</a>
                </li>
            </ul>
            <a class="btn btn-outline-light" href="./../index.jsp" role="button">Cerrar Sesión</a>
        </div>
    </div>
</nav>
