<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/login.css">
</head>
<body>
    <div class="login">
	 	<h2 class="text-center text-white">Bienvenido</h2>
	 	
	 	<form class="needs-validation" novalidate>
	 		<div class="form-group has-validated">
	 			<label for="email" class="form-label text-white">Correo electrónico</label>
            	<input type="email" name="email" class="form-control" required>
            	<div class="invalid-feedback">
            		Ingrese su correo electrónico
            	</div>
	 		</div>
	 		<div class="form-group has-validated">
           		<label for="password" class="form-label text-white">Contraseña</label>
            	<input type="password" name="password" class="form-control" required>
            	<div class="invalid-feedback">
            		Ingrese su contraseña
            	</div>
	 		</div>
	 		<div class="d-flex justify-content-center">
            	<button type="submit" class="btn btn-primary mt-4 w-50">Iniciar Sesión</button>
            </div>
	 	</form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="scripts/validacionLogin.js"></script>
</body>
</html>