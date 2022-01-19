<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de nuevo Alumno</title>
    <!-- Generates the  path to public directory public/css/index.css -->
    <link rel="stylesheet" href="<?php echo asset('css/index.css')?>" type="text/css">
    <link href="<?php echo asset('css/app.css') ?>" rel="stylesheet">
    <!--Javascript Code  -->
    <script src="{{ URL::to('js/bootstrap.js') }}" defer></script>
    <script type="text/javascript" src="{{ URL::to('js/myScript.js') }}"></script>
</head>
<body>
    <h2 class="titulo">Formulario de insertar nuevo Alumno</h2>
    <h3 class="titulo">en <strong> EFA </strong>El Campico</h3>
    <div class="container containerLogo">
        <img class="logo" src="<?php echo asset('img/logoEFA.png') ?>"/>
    </div>
    <form action="/alumnos/crear" method ="POST">
        @csrf
        <!-- ['nombre','telefono','edad','password','email','sexo']; -->
        <label>Nombre:</label><input type="text" name="nombre" placeholder="Su nombre">
        <label>Telefono:</label><input type="number" name="telefono" placeholder="Su Número de Telefono">
        <label>Edad:</label><input type="number" name="edad" placeholder="Su edad">
        <label>Contraseña: </label><input type="password" name="password" placeholder="Su Contraseña">
        <label>Email:</label><input type="text" name="email" placeholder="Su dirección de Email">
        <label>Sexo:</label><input type="text" name="sexo" placeholder="Su Sexo(Hombre/Mujer)"/>
        <input type="submit" value="Guardar">
    </form>
    <div class="container">
        <div class="row">
            <div class="col">
                <a class="btn btn-secondary" href="/alumnos" onclick="mostrarTodosRegistros();" id="btnListado">Obtener Todos los Alumnos</a>
            </div>
            <div class="col">
            <a class="btn btn-secondary" href=""   onclick="mostrarAlumno();">Obtener Alumno por id</a>
            </div>
            <div class="col">
                <a class="btn btn-primary" href="#">Nuevo Alumno</a>
            </div>
            <div class="col">
                <a class="btn btn-warning" href="#" onclick="editarAlumno();">Actualizar Alumno</a>
            </div>
            <div class="col">
                <a class="btn btn-danger" href="#"  onclick="eliminarAlumno();">Eliminar Alumno</a>
            </div>            
        </div>
    </div>    
</body>
</html>