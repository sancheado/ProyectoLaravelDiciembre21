<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Alumno;

class AlumnoController extends Controller
{
    protected $alumnos;

    public function __construct(Alumno $alumnos){
        $this->alumnos = $alumnos;
    }

    // public function __invoke(Alumno $alumno){
    //     $alumnos = $this->alumnos->obtenerAlumnos();
    //     return $alumnos;
    // }

    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $alumnos = $this->alumnos->obtenerAlumnos();
        return view('alumno.lista', ['alumnos'=>$alumnos]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('alumno.crear');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $alumno = new Alumno($request->all());
        $alumno->save();
        return redirect()->action([AlumnoController::class,'index']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $alumno = $this->alumnos->obtenerAlumnoPorId($id);
        echo $alumno;
        return view('alumno.ver', ['alumno' => $alumno]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $alumno = $this->alumnos->obtenerAlumnoPorId($id);
        return view('alumno.editar', ['alumno' => $alumno]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $alumno = Alumno::find($id);
        $alumno->fill($request->all());
        $alumno->save();
        return redirect()->action([AlumnoController::class, 'index']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $alumno = Alumno::find($id);
        $alumno->delete();
        return redirect()->action([AlumnoController::class,'index']);
    }
}
