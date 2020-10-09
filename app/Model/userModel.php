<?php 

class userModel{
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_miviandita;charset=utf8', 'root', '');
    }

 //OBTIENE UN USUARIO INGRESADO PARA SABER SI ESTA EN LA DB
    function GetUser($user){
        $sentencia = $this->db->prepare("SELECT * FROM users WHERE email=?");
        $sentencia->execute([$user]);
        return $sentencia->fetch(PDO::FETCH_OBJ);
    }

 //OBTIENE TODOS LOS USUARIOS
    function getAllUsers(){
        $query = $this->db->prepare('SELECT * FROM users');
        $query->execute();
        $usuarios = $query->fetchAll(PDO::FETCH_OBJ);
        return $usuarios;
    }

 //AGREGA UN USUARIO A LA BD
    function addUserDB($email,$hash,$rol){
        $query = $this->db->prepare('INSERT INTO users(email,password,rol) VALUES (?,?,?)');
        $query->execute([$email,$hash,$rol]);
    }
}

?>