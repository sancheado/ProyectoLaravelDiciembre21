<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Alumnos</title>
    <!-- Generates the  path to public directory public/css/index.css -->
    <link rel="stylesheet" href="<?php echo asset('css/index.css')?>" type="text/css">
    <link href="<?php echo asset('css/app.css') ?>" rel="stylesheet">
    <!--Javascript Code  -->
    <script src="{{ URL::to('js/bootstrap.js') }}" defer></script>
    <script type="text/javascript" src="{{ URL::to('js/myScript.js') }}"></script>
</head>
<body class="ListadoBody"> 
    <h2 class="titulo">Listado de Alumnos</h2>
    <h3 class="titulo">de <strong> EFA </strong>El Campico</h3>
    <div class="container containerLogo">
        <img class="logo" src="<?php echo asset('img/logoEFA.png') ?>" />
    </div>
    <div class="container miConte">
        <div id="ocultarListado" class="row">
            <table id="tableAlumnos" class="table">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Edad</th>
                            <th scope="col">Password</th>
                            <th scope="col">Email</th>
                            <th scope="col">Sexo</th>
                        </tr>
                    </thead>
                    @foreach ($alumnos as $alumno)
                        <tr>
                            <td scope="row num">{{ $alumno->id}}</td>
                            <td  scope="row txt">{{$alumno->nombre }}</td>
                            <td  scope="row num">{{$alumno->telefono }}</td>
                            <td  scope="row num">{{$alumno->edad }}</td>
                            <td  scope="row txt">{{$alumno->password }}</td>
                            <td  scope="row txt">{{$alumno->email }}</td>
                            <td  scope="row txt">{{$alumno->sexo }}</td>
                            <td  scope="row">
                                <a class="col" href="/alumnos/ver/{{ $alumno->id }}">Ver</i></a>
                                <a class="col"  href="/alumnos/editar/{{ $alumno->id }}">Editar</a>
                                <a class="col"  href="/alumnos/eliminar/{{ $alumno->id }}">Eliminar</a>
                            </td>
                        </tr>
                    @endforeach
                </table>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col">
                <a class="btn btn-secondary" href="#" onclick="mostrarTodosRegistros();" id="btnListado">Obtener Todos los Alumnos</a>
            </div>
            <div class="col">
            <a class="btn btn-secondary" href="#"   onclick="mostrarAlumno();">Obtener Alumno por id</a>
            </div>
            <div class="col">
                <a class="btn btn-primary" href="../alumnos/crear">Nuevo Alumno</a>
            </div>
            <div class="col">
                <a class="btn btn-warning" href="#" onclick="editarAlumno();">Actualizar Alumno</a>
            </div>
            <div class="col">
                <a class="btn btn-danger" href="#" onclick="eliminarAlumno();">Eliminar Alumno</a>
            </div>            
        </div>
    </div>
    <div class="container miModal">
        <div class="row">

        </div>
        <div class="row">

        </div>
    </div>
    
</body>
</html>