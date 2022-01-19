<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alumno: </title>
    <!-- Generates the  path to public directory public/css/index.css -->
    <link rel="stylesheet" href="<?php echo asset('css/index.css')?>" type="text/css">
    <link href="<?php echo asset('css/app.css') ?>" rel="stylesheet">
    <!--Javascript Code  -->
    <script src="{{ URL::to('js/bootstrap.js') }}" defer></script>
    <script type="text/javascript" src="{{ URL::to('js/myScript.js') }}"></script>
</head>
<body>
    <h2 class="titulo">Datos del Alumno</h2>
    <h3 class="titulo">de <strong> EFA </strong>El Campico</h3>
    <div class="container containerLogo">
        <img class="logo" src="<?php echo asset('img/logoEFA.png') ?>"/>
    </div>
    <div>
    <p> Nombre: {{ $alumno->nombre}}</p>
    <p> Telefono: {{ $alumno->telefono}}</p>
    <p> Edad: {{ $alumno->edad}} </p>
    <p> Email: {{ $alumno->email}}</p>
    <p> Contraseña:<strong> {{ $alumno->password}}</strong></p>
    <p> Sexo: {{ $alumno->sexo}}</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col">
                <a class="btn btn-secondary" href="/alumnos" onclick="mostrarTodosRegistros();" id="btnListado">Obtener Todos los Alumnos</a>
            </div>
            <div class="col">
            <a class="btn btn-secondary" href="" onclick="mostrarAlumno();">Obtener Alumno por id</a>
            </div>
            <div class="col">
                <a class="btn btn-primary" href="../crear">Nuevo Alumno</a>
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