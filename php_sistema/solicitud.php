<?php 
	//include_once ('System_School/System_School/core/controller/Database.php');
	//include_once ('System_School/System_School/core/controller/Executor.php');
    require 'conexion.php';

		$nombres=$_POST['nombres'];
		$apellidos=$_POST['apellidos'];
		$correo=$_POST['correo'];
        $empresa=$_POST['empresa'];
        $telefono=$_POST['telefono'];

        $insertar= "INSERT INTO solicitudes (nombres,apellidos,correo,empresa,telefono) VALUES('$nombres','$apellidos','$correo','$empresa','$telefono')";
        $query= mysqli_query($conectar,$insertar);
		if($query){
			header('Location: ../index.php');
		}else{
			echo "<script> alert('Los campos estan vacios');</script>";
		}

	

?>