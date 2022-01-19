
function mostrarTodosRegistros(){
    //Variables que usaremos despues.
    var myTable = document.getElementById("ocultarListado").style;
    var myTableSeconStyle = document.getElementById("tableAlumnos").style;
    var btnModificar = document.getElementById("btnListado");

    if(myTable.display == "" || myTable.display == "none") myTable.display = "Block", myTableSeconStyle.display = "Block",btnModificar.innerHTML = "Ocultar listado de Alumnos";
    else myTable.display = "none", myTableSeconStyle.display = "none",btnModificar.innerHTML = "Obtener Todos los Alumnos";
}


function eliminarAlumno(value){
    action = confirm(value) ? true : event.preventDefault()
}

function mostrarAlumno(){
    var id = prompt("Necesita proporcionarnos un id para visualizar los datos.");
    var miUrl = "http://127.0.0.1:8000/alumnos/ver/"+id;
    // alert(miUrl);
    window.location.replace(miUrl);
}

function editarAlumno(){
    var id = prompt("Necesita proporcionarnos un id para visualizar los datos.");
    var miUrl = "http://127.0.0.1:8000/alumnos/editar/"+id;
    window.location.replace(miUrl);
}

function eliminarAlumno(){
    var id = prompt("Necesita proporcionarnos un id para poder eliminar los datos.");
    var miUrl = "http://127.0.0.1:8000/alumnos/eliminar/"+id;
    window.location.replace(miUrl);
}