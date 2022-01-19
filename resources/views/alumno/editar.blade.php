<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alumno:</title>
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
    <form action="/alumnos/editar/{{ $alumno->id}}" method ="POST">
    @csrf
    {{ method_field('PUT') }}
    <!-- ['nombre','telefono','edad','password','email','sexo']; -->
        <label> Nombre:</label><input type="text" name="nombre" placeholder="Su nombre" value="{{ $alumno->nombre}}">
        <label> Telefono:</label><input type="number" name="telefono" placeholder="Su número de Telefono" value="{{ $alumno->telefono}}">
        <label> Edad:</label><input type="number" name="edad" placeholder="Su edad" value="{{ $alumno->edad}}">
        <label> Contraseña:</label><input type="text" name="password" placeholder="Su contraseña" value="{{ $alumno->password}}">
        <label> Email:</label><input type="text" name="email" placeholder="Su dirección de Email" value="{{ $alumno->email}}">
        <label> Sexo:</label><input type="text" name="sexo" placeholder="Su sexo(Hombre/Mujer)" value="{{ $alumno->sexo}}">
        <input type="submit" value="Guardar">
    </form>
    <div class="container">
        <div class="row">
            <div class="col">
                <a class="btn btn-secondary" href="../" onclick="mostrarTodosRegistros();" id="btnListado">Obtener Todos los Alumnos</a>
            </div>
            <div class="col">
            <a class="btn btn-secondary" href="../ver">Obtener Alumno por id</a>
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